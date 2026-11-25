#!/usr/bin/env bash
set -euo pipefail

input=$(cat)
tool_name=$(jq -r '.tool_name // empty' <<<"${input}")
if [[ "${tool_name}" != "Bash" ]]; then
    exit 0
fi

command=$(jq -r '.tool_input.command // empty' <<<"${input}")
if [[ -z "${command}" ]] || ! grep -qE '(^|[;&|`(]|[[:space:]])git([[:space:]]|$)' <<<"${command}"; then
    exit 0
fi

git_global='([[:space:]]+(-C[[:space:]]+[^[:space:]]+|-c[[:space:]]+[^[:space:]]+|--[A-Za-z-]+(=[^[:space:]]+)?))*'
is_commit=false
is_push=false
if grep -qE "(^|[;&|\`(]|[[:space:]])git${git_global}[[:space:]]+commit([[:space:]]|$)" <<<"${command}"; then
    is_commit=true
fi
if grep -qE "(^|[;&|\`(]|[[:space:]])git${git_global}[[:space:]]+push([[:space:]]|$)" <<<"${command}"; then
    is_push=true
fi
if [[ "${is_commit}" == "false" && "${is_push}" == "false" ]]; then
    exit 0
fi

cwd=$(jq -r '.cwd // empty' <<<"${input}")
repo_dir="${cwd:-$(pwd)}"
if [[ "${command}" =~ (^|[[:space:]])git[[:space:]]+-C[[:space:]]+([^[:space:]]+) ]]; then
    repo_dir="${BASH_REMATCH[2]}"
fi

git_command=(git -C "${repo_dir}")
protected_names="main master"
default_branch=$("${git_command[@]}" symbolic-ref --quiet --short refs/remotes/origin/HEAD 2>/dev/null || true)
default_branch=${default_branch#origin/}
if [[ -n "${default_branch}" ]]; then
    protected_names="${protected_names} ${default_branch}"
fi

is_protected() {
    local name="${1:-}"
    local candidate
    [[ -n "${name}" ]] || return 1
    for candidate in ${protected_names}; do
        if [[ "${name}" == "${candidate}" || "${name}" == "refs/heads/${candidate}" ]]; then
            return 0
        fi
    done
    return 1
}

deny() {
    printf 'git-branch-guard: %s\n' "$1" >&2
    exit 2
}

current_branch=$("${git_command[@]}" symbolic-ref --quiet --short HEAD 2>/dev/null || true)
if [[ "${is_commit}" == "true" ]] && is_protected "${current_branch}"; then
    deny "refusing to commit on primary branch '${current_branch}'"
fi

if [[ "${is_push}" == "true" ]]; then
    push_segment=$(grep -oE "git${git_global}[[:space:]]+push[^;&|]*" <<<"${command}" | sed -n '1p')
    read -r -a push_tokens <<<"${push_segment#*push}"
    positional=()
    for token in "${push_tokens[@]}"; do
        [[ "${token}" == -* ]] && continue
        positional+=("${token}")
    done
    start=0
    if [[ ${#positional[@]} -gt 0 && "${positional[0]}" != *:* ]]; then
        start=1
    fi
    if [[ ${#positional[@]} -le ${start} ]] && is_protected "${current_branch}"; then
        deny "refusing to push primary branch '${current_branch}'"
    fi
    for ((index = start; index < ${#positional[@]}; index++)); do
        destination=${positional[index]##*:}
        destination=${destination#+}
        if [[ "${destination}" == "HEAD" ]]; then
            destination="${current_branch}"
        fi
        if is_protected "${destination}"; then
            deny "refusing to push to primary branch '${destination}'"
        fi
    done
fi
