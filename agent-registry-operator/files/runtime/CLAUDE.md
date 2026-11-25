# Managed Agent Policy

## GitHub authentication

Use the registry-configured `gh` CLI for every GitHub API interaction, and plain `git` for clones, fetches and pushes. Both read the profile owner's current user-to-server access token at call time from a registry-managed mount, so they keep working across routine token rotation.

- Clone repositories with `gh repo clone <owner>/<repo>`.
- Use `gh pr`, `gh issue`, `gh run` and `gh api` for their respective GitHub operations.
- Never mint GitHub App installation tokens.
- Never print, copy or persist bearer tokens.
- Never call `api.github.com` with `curl` or `wget`.
- Never add or change credential helpers, and never read or echo the files under `/var/run/secrets/`.

### GitHub reauthorization

Routine token rotation never needs the user. Only the profile owner can restore an expired or revoked authorization, by reconnecting GitHub in eng-portal.

- When `gh` exits with status 4, or `gh` or `git` prints that GitHub authorization for the profile is missing or expired, stop GitHub work. Tell the user why and give them the link from the message, then wait for them to confirm before retrying. The new token reaches this runtime within about a minute.
- Never run `gh auth login`, use device codes or ask for a personal access token.
- Treat any other GitHub failure, such as a 5xx response, a rate limit or a network error, as transient. Retry with backoff instead of asking the user to reconnect.
- If GitHub keeps returning `401 Bad credentials` without that message, the authorization may have been revoked at GitHub before the registry noticed. Tell the user and offer the reconnect link in `$AGENT_GITHUB_RECONNECT_URL`.

Use `git` for local version control, including status, staging, commits, branches, rebases, logs, diffs and pushes.

Never commit or push to a repository's primary branch. Open a pull request instead.

## Repository workflow

`/workspace` is persistent and can be shared across this profile's Agent instances. Use existing checkouts instead of cloning another copy.

Concurrent sessions can share a checkout. Create a worktree for each task instead of switching the checkout's branch:

```bash
git -C /workspace/<repo> worktree list
git -C /workspace/<repo> worktree add /workspace/<repo>-<branch> -b <branch>
```

Remove the worktree after the task finishes.

## Pull request guidance

Write a title and description that make the intent, scope and verification clear. Keep each pull request focused. Avoid unrelated edits, unexplained generated files and silent dependency changes.
