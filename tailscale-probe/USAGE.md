# Tailscale probe

This chart schedules an ephemeral Tailscale probe in a selected Kubernetes
cluster. Each Job discovers login nodes whose hostname starts with `login-`,
runs `tailscale ping`, authenticates over Tailscale SSH as the
configured non-root user, and exposes the results as Prometheus metrics.

The probe does not require a dedicated source repository or image:

- The existing `aws-oidc/agent` image supplies `tailscaled`, the Tailscale CLI,
  OpenSSH, and standard shell tools. The chart overrides its entrypoint and
  executes only the ConfigMap-hosted probe script.
- `prometheus/node-exporter` runs as a native sidecar and exposes files from its
  textfile collector.

The pod annotations select the node-exporter endpoint for Grafana Alloy.
Synthetic metrics use the existing `probe_` allowlist. Native metrics are
written with `tailscale metrics write` and retain their documented
`tailscaled_` names; the fleet allowlists explicitly include that prefix. The
Job remains alive for two minutes after writing results so Alloy's one-minute
discovery and scrape interval sees at least one sample.

## Cluster prerequisites

The Argo CD cluster secret must have both labels:

```yaml
enable-tailscale-probe: "true"
tailscale-probe-client-id: "<tailscale-oauth-client-id>"
```

The client must have a workload identity trust rule for the cluster's
Kubernetes OIDC issuer and the subject:

```text
system:serviceaccount:tailscale-probe:tailscale-probe
```

The rule must allow `tag:tailscale-probe`. Tailnet policy must permit that tag
to reach login nodes and SSH as the configured non-root operating-system
user. That account must exist on every targeted login node and support a
non-interactive `true` command.

## Primary metrics

- `probe_tailscale_backend_up`
- `probe_tailscale_target_count`
- `probe_tailscale_ping_success`
- `probe_tailscale_ping_latency_seconds`
- `probe_tailscale_ping_path_info`
- `probe_tailscale_ping_last_run_timestamp_seconds`
- `probe_tailscale_ssh_success`
- `probe_tailscale_ssh_duration_seconds`
- `probe_tailscale_cycle_duration_seconds`
- `probe_tailscaled_metrics_scrape_success`

The probe also publishes the native metrics documented in
[Tailscale client metrics](https://tailscale.com/docs/reference/tailscale-client-metrics).
