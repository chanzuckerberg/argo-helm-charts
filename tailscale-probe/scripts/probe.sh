#!/usr/bin/env bash
set -euo pipefail

ts() {
  tailscale --socket="${TS_SOCKET}" "$@"
}

cleanup() {
  kill "${tailscaled_pid}" 2>/dev/null || true
  wait "${tailscaled_pid}" 2>/dev/null || true
}

collect_target() {
  target="$1"
  output_file="$2"
  ping_output="$(ts ping \
    --c="${PING_COUNT}" \
    --timeout="${PING_TIMEOUT}" \
    "${target}" 2>&1 || true)"
  pong="$(printf '%s\n' "${ping_output}" | awk '/^pong from / { line=$0 } END { print line }')"
  ssh_success=0
  ssh_duration_seconds=0
  if [[ -n "${pong}" ]]; then
    ssh_started="$(date +%s%N)"
    if timeout "${SSH_TIMEOUT_SECONDS}" \
        tailscale --socket="${TS_SOCKET}" ssh \
        "${SSH_USER}@${target}" "${SSH_COMMAND}" </dev/null >/dev/null 2>&1; then
      ssh_success=1
    fi
    ssh_finished="$(date +%s%N)"
    ssh_duration_seconds="$(awk "BEGIN { printf \"%.6f\", (${ssh_finished} - ${ssh_started}) / 1000000000 }")"
  fi

  {
    if [[ -z "${pong}" ]]; then
      printf 'probe_tailscale_ping_success{source_cluster="%s",target="%s"} 0\n' \
        "${CLUSTER_NAME}" "${target}"
      printf 'probe_tailscale_ping_path_info{source_cluster="%s",target="%s",path_type="unavailable"} 1\n' \
        "${CLUSTER_NAME}" "${target}"
    else
      latency_ms="$(printf '%s\n' "${pong}" | sed -n 's/.* in \([0-9.][0-9.]*\)ms$/\1/p')"
      route="$(printf '%s\n' "${pong}" | sed -n 's/.* via \(.*\) in [0-9.][0-9.]*ms$/\1/p')"
      path_type="direct"
      case "${route}" in
        DERP\(*)
          path_type="derp"
          ;;
        peer-relay\(*)
          path_type="peer_relay"
          ;;
      esac

      printf 'probe_tailscale_ping_success{source_cluster="%s",target="%s"} 1\n' \
        "${CLUSTER_NAME}" "${target}"
      if [[ -n "${latency_ms}" ]]; then
        latency_seconds="$(awk "BEGIN { printf \"%.6f\", ${latency_ms} / 1000 }")"
        printf 'probe_tailscale_ping_latency_seconds{source_cluster="%s",target="%s"} %s\n' \
          "${CLUSTER_NAME}" "${target}" "${latency_seconds}"
      fi
      printf 'probe_tailscale_ping_path_info{source_cluster="%s",target="%s",path_type="%s"} 1\n' \
        "${CLUSTER_NAME}" "${target}" "${path_type}"
    fi
    printf 'probe_tailscale_ping_last_run_timestamp_seconds{source_cluster="%s",target="%s"} %s\n' \
      "${CLUSTER_NAME}" "${target}" "$(date +%s)"
    printf 'probe_tailscale_ssh_success{source_cluster="%s",target="%s"} %s\n' \
      "${CLUSTER_NAME}" "${target}" "${ssh_success}"
    printf 'probe_tailscale_ssh_duration_seconds{source_cluster="%s",target="%s"} %s\n' \
      "${CLUSTER_NAME}" "${target}" "${ssh_duration_seconds}"
  } > "${output_file}"
}

collect_builtin_metrics() {
  destination="/metrics/tailscaled.prom"
  temporary="/metrics/.tailscaled.$$"
  rm -f "${temporary}"
  if ! ts metrics write "${temporary}"; then
    rm -f "${temporary}"
    return 1
  fi
  mv "${temporary}" "${destination}"
}

collect() {
  collect_started="$(date +%s)"
  work_dir="/metrics/work"
  output="/metrics/.probe.$$"
  rm -rf "${work_dir}"
  mkdir -p "${work_dir}"

  backend_up=0
  if ts status --peers=false >/dev/null 2>&1; then
    backend_up=1
  fi
  targets="$(ts status 2>/dev/null |
    awk -v prefix="${TARGET_HOSTNAME_PREFIX}" -v self="${TS_HOSTNAME}" \
      '$2 ~ ("^" prefix) && $2 != self { print $2 }')"
  target_count="$(printf '%s\n' "${targets}" | awk 'NF { count++ } END { print count + 0 }')"

  {
    echo '# HELP probe_tailscale_backend_up Whether the local Tailscale daemon is running and authenticated.'
    echo '# TYPE probe_tailscale_backend_up gauge'
    printf 'probe_tailscale_backend_up{source_cluster="%s"} %s\n' "${CLUSTER_NAME}" "${backend_up}"
    echo '# HELP probe_tailscale_target_count Number of Reef login nodes discovered by hostname prefix.'
    echo '# TYPE probe_tailscale_target_count gauge'
    printf 'probe_tailscale_target_count{source_cluster="%s"} %s\n' "${CLUSTER_NAME}" "${target_count}"
    echo '# HELP probe_tailscale_ping_success Whether the target returned at least one Tailscale ping response.'
    echo '# TYPE probe_tailscale_ping_success gauge'
    echo '# HELP probe_tailscale_ping_latency_seconds Latency of the final Tailscale ping response.'
    echo '# TYPE probe_tailscale_ping_latency_seconds gauge'
    echo '# HELP probe_tailscale_ping_path_info Path used by the final Tailscale ping response.'
    echo '# TYPE probe_tailscale_ping_path_info gauge'
    echo '# HELP probe_tailscale_ping_last_run_timestamp_seconds Unix timestamp of the latest probe attempt.'
    echo '# TYPE probe_tailscale_ping_last_run_timestamp_seconds gauge'
    echo '# HELP probe_tailscale_ssh_success Whether the synthetic SSH command completed successfully.'
    echo '# TYPE probe_tailscale_ssh_success gauge'
    echo '# HELP probe_tailscale_ssh_duration_seconds Duration of the synthetic SSH command.'
    echo '# TYPE probe_tailscale_ssh_duration_seconds gauge'
    echo '# HELP probe_tailscaled_metrics_scrape_success Whether native Tailscale metrics were written successfully.'
    echo '# TYPE probe_tailscaled_metrics_scrape_success gauge'
    echo '# HELP probe_tailscale_cycle_duration_seconds Duration of the complete probe cycle.'
    echo '# TYPE probe_tailscale_cycle_duration_seconds gauge'
  } > "${output}"

  active=0
  for target in ${targets}; do
    safe_target="$(printf '%s' "${target}" | tr -c 'a-zA-Z0-9._-' '_')"
    collect_target "${target}" "${work_dir}/${safe_target}.part" &
    active=$((active + 1))
    if [[ "${active}" -ge "${MAX_PARALLEL}" ]]; then
      wait
      active=0
    fi
  done
  wait

  for result in "${work_dir}"/*.part; do
    if [[ -f "${result}" ]]; then
      cat "${result}" >> "${output}"
    fi
  done

  if collect_builtin_metrics; then
    printf 'probe_tailscaled_metrics_scrape_success{source_cluster="%s"} 1\n' "${CLUSTER_NAME}" >> "${output}"
  else
    printf 'probe_tailscaled_metrics_scrape_success{source_cluster="%s"} 0\n' "${CLUSTER_NAME}" >> "${output}"
  fi
  printf 'probe_tailscale_cycle_duration_seconds{source_cluster="%s"} %s\n' \
    "${CLUSTER_NAME}" "$(($(date +%s) - collect_started))" >> "${output}"
  mv "${output}" /metrics/probe.prom
}

mkdir -p "$(dirname "${TS_SOCKET}")" /metrics /tmp/tailscale
tailscaled \
  --socket="${TS_SOCKET}" \
  --state=mem: \
  --statedir=/tmp/tailscale \
  --tun=userspace-networking &
tailscaled_pid="$!"
trap cleanup EXIT INT TERM

ready=0
for _ in $(seq 1 60); do
  if [[ -S "${TS_SOCKET}" ]] && kill -0 "${tailscaled_pid}" 2>/dev/null; then
    ready=1
    break
  fi
  sleep 1
done
if [[ "${ready}" -ne 1 ]]; then
  echo "tailscaled did not become ready" >&2
  exit 1
fi

ts up \
  --accept-dns=true \
  --advertise-tags="${TS_TAG}" \
  --client-id="${TS_CLIENT_ID}" \
  --hostname="${TS_HOSTNAME}" \
  --id-token="file:${TS_TOKEN_FILE}" \
  --reset

collect

# Alloy discovers annotated pods on a one-minute interval. Keep the Job and its
# native sidecar alive long enough for at least one scrape after metrics exist.
sleep "${METRICS_EXPOSE_SECONDS}"
