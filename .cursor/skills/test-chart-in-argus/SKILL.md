---
name: test-chart-in-argus
description: >-
  Test unpublished argo-helm-charts changes by creating a PR in argus-example-app
  with a bundled .tgz of the local stack chart. Use when the user says "test chart",
  "test in argus", "test stack changes", "create test PR", or wants to validate
  helm chart changes in a real Argus deployment.
disable-model-invocation: true
---

# Test Unpublished Helm Chart in Argus

Creates a PR in `chanzuckerberg/argus-example-app` that bundles uncommitted/unpublished
stack chart changes so Argus deploys them for integration testing.

## Prerequisites

- `helm` CLI installed
- `gh` CLI authenticated with access to `chanzuckerberg/argus-example-app`
- Current workspace is the `argo-helm-charts` repo (or you know its path)

## Inputs to Gather

Before running, confirm or infer these from context:

| Input | Default | Notes |
|-------|---------|-------|
| `argo-helm-charts` path | Current workspace | Must contain `stack/Chart.yaml` |
| `argus-example-app` clone location | Sibling dir (`../argus-example-app`) | Will clone if missing |
| Branch name | `test/stack-<argo-helm-charts-branch>` | Auto-generated from current branch |
| Environment | `rdev` | The `.infra/<env>/` directory to modify |
| PR title | Auto-generated | Describes what's being tested |

Ask the user only if defaults can't be inferred. For example, if they are on a feature
branch in argo-helm-charts, auto-derive the test branch name from it.

## Workflow

### 1. Determine paths and branch

```bash
# Get the argo-helm-charts repo root and current branch
HELM_CHARTS_DIR="$(git -C <workspace> rev-parse --show-toplevel)"
HELM_BRANCH="$(git -C "$HELM_CHARTS_DIR" branch --show-current)"
STACK_DIR="$HELM_CHARTS_DIR/stack"

# Determine argus-example-app location (sibling directory)
EXAMPLE_APP_DIR="$(dirname "$HELM_CHARTS_DIR")/argus-example-app"
```

### 2. Clone argus-example-app if needed

```bash
if [ ! -d "$EXAMPLE_APP_DIR" ]; then
  gh repo clone chanzuckerberg/argus-example-app "$EXAMPLE_APP_DIR"
fi
```

### 3. Create a fresh branch from main

```bash
cd "$EXAMPLE_APP_DIR"
git fetch origin main
git checkout -b "test/stack-${HELM_BRANCH}" origin/main
```

### 4. Modify Chart.yaml

In `.infra/rdev/Chart.yaml`, update the `stack` dependency:
- Change `repository` from `https://chanzuckerberg.github.io/argo-helm-charts` to the
  relative `file://` path pointing to the local stack chart directory
- Update `version` to match the local `stack/Chart.yaml` version

The relative path from `.infra/rdev/` to the stack chart is typically:
```
file://../../../argo-helm-charts/stack
```

Verify by confirming `$EXAMPLE_APP_DIR/.infra/rdev/../../../argo-helm-charts/stack/Chart.yaml` exists.

**Important:** All dependency .tgz files must be committed. ArgoCD runs
`helm dependency build` before rendering manifests. If any .tgz is missing from `charts/`,
helm attempts to fetch it, which triggers a full dependency resolution pass that also tries
to resolve the `file://` path — failing because it doesn't exist on the ArgoCD server.
When ALL .tgz files are pre-bundled, helm skips fetching entirely.

### 5. Run helm dependency update

```bash
cd "$EXAMPLE_APP_DIR/.infra/rdev"
rm -f charts/*.tgz Chart.lock
helm dependency update .
```

This generates:
- `Chart.lock` (updated lockfile)
- `charts/stack-<version>.tgz` (bundled chart archive)

### 6. Commit and push

```bash
cd "$EXAMPLE_APP_DIR"
git add .infra/rdev/Chart.yaml .infra/rdev/Chart.lock .infra/rdev/charts/*.tgz
git commit -m "test: bundle local stack chart (${HELM_BRANCH})"
git push -u origin HEAD
```

### 7. Create PR with `stack` label

```bash
gh pr create \
  --repo chanzuckerberg/argus-example-app \
  --title "test: validate stack chart changes from ${HELM_BRANCH}" \
  --body "Testing unpublished stack chart changes from \`argo-helm-charts\` branch \`${HELM_BRANCH}\`.

This PR bundles the local chart as a .tgz for Argus to deploy. **Do not merge.**" \
  --label "stack"
```

### 8. Return result

Share the PR URL with the user. Remind them:
- The `stack` label triggers Argus to create a stack from this PR
- **Do not merge** this PR — it contains local-only chart references
- Lint checks will fail (expected — CI can't resolve the local file:// reference)
- Once testing is complete, close the PR

## Error Handling

- If `helm dependency update` fails, verify the relative path resolves correctly
- If the branch already exists, offer to force-update it or pick a new name
- If the PR already exists for this branch, share the existing PR URL instead
