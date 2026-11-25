#!/usr/bin/env bash
set -euo pipefail

input=$(cat)
tool_name=$(jq -r '.tool_name // empty' <<<"${input}")
if [[ "${tool_name}" != "Bash" ]]; then
    exit 0
fi

command=$(jq -r '.tool_input.command // empty' <<<"${input}")
if [[ -z "${command}" ]] || ! grep -qE '(^|[;&|`(]|[[:space:]])(tailscale[[:space:]]+)?ssh([[:space:]]|$)' <<<"${command}"; then
    exit 0
fi

expected="${AGENT_SSH_USER:-}"
if [[ -z "${expected}" || "${expected}" == "root" ]]; then
    printf 'ssh-guard: valid AGENT_SSH_USER is required\n' >&2
    exit 2
fi

read -r -a tokens <<<"${command}"
checked=0
for ((index = 0; index < ${#tokens[@]}; index++)); do
    start=-1
    if [[ "${tokens[index]}" == "ssh" ]]; then
        start=$((index + 1))
    elif [[ "${tokens[index]}" == "tailscale" ]] &&
        [[ $((index + 1)) -lt ${#tokens[@]} ]] &&
        [[ "${tokens[index + 1]}" == "ssh" ]]; then
        start=$((index + 2))
    fi
    [[ ${start} -ge 0 ]] || continue

    login_user=""
    for ((argument = start; argument < ${#tokens[@]}; argument++)); do
        token=${tokens[argument]}
        case "${token}" in
        '&&'|'||'|';'|'|')
            break
            ;;
        -l)
            if [[ $((argument + 1)) -lt ${#tokens[@]} ]]; then
                login_user=${tokens[argument + 1]}
            fi
            break
            ;;
        -l*)
            login_user=${token#-l}
            break
            ;;
        -*)
            continue
            ;;
        *@*)
            login_user=${token%%@*}
            break
            ;;
        *)
            break
            ;;
        esac
    done

    checked=$((checked + 1))
    if [[ -z "${login_user}" ]]; then
        printf 'ssh-guard: use an explicit login user\n' >&2
        exit 2
    fi
    if [[ "${login_user}" == "root" || "${login_user}" != "${expected}" ]]; then
        printf "ssh-guard: login user '%s' is not allowed\n" "${login_user}" >&2
        exit 2
    fi
done

if [[ ${checked} -eq 0 ]]; then
    printf 'ssh-guard: could not validate SSH command\n' >&2
    exit 2
fi
