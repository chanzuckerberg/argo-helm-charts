# OPS collector deployment (DT-201)

This closes the hosting/scrape gap between the OPS producer PRs and Alloy/AMP/Grafana.
It deploys independently of OPS main. The initial canary uses reviewed immutable
OPS PR commits; operational enablement and OPS-main merges still wait for Alan's
verified OPS release ([DT-196](https://czi.atlassian.net/browse/DT-196)).

## Deployment identity and prerequisites

- Cluster: `prod-sci-data`, AWS account `577638397886`, **us-east-1**. The
  `prod-sci-data-uw2` cluster is a separate environment and is not this target.
- Namespace: `ops-telemetry`; collector API:
  `https://ops-telemetry.prod-sci-data.prod.czi.team/api/v1`.
- Existing Envoy HTTPS listener and wildcard certificate terminate TLS; only
  `/api/v1` is routed. `/metrics`, `/healthz` and `/readyz` remain internal.
- Existing `aws-secretsmanager-us-east-1` ClusterSecretStore supplies dedicated
  runtime and migration secrets. No credentials are committed or output by Terraform.
- Terraform component `prod-sci-data/ops-telemetry` creates encrypted private
  PostgreSQL 16.15, multi-AZ `db.t4g.small`, 20 GiB with growth capped at 100 GiB,
  seven-day backups, deletion protection and a mandatory final snapshot. Review
  recurring cost and owner with the platform reviewer. It also creates immutable ECR.
- Only the EKS worker security group can reach PostgreSQL on 5432. Collector pods
  accept ingress only from the observed Alloy and Envoy namespace/pod selectors.
  Namespace egress follows the platform policy; this chart does not widen it.
- Designate an OPS service owner and platform deployment reviewer on DT-201 before
  applying. Run the repository's normal Terraform review/merge/apply workflow.
  Do not disable policy or broaden permissions to work around a failed rollout.

## Order: infrastructure and live canary before OPS-main merges

### Updating the existing collector for worker timing

The chart pins source `761c718e06c106a215aea3d79691a6b527d225e7` and bundles additive
migration `0003_worker_timing.sql`. Applied `0001` and `0002` are unchanged. The
new producer's `queued_at`, `worker_started_at` and `worker_finished_at` fields
are rejected by the earlier collector; deploy the compatible collector first.

1. Review this chart/source revision, publish its image with the helper below,
   and record the immutable image digest. This chart keeps `image` empty so a
   source/chart merge cannot choose an image implicitly.
2. Update the existing ApplicationSet's reviewed chart commit, image digest and
   `sourceRevision` pins in `argus-infra-stacks`. Preserve manual sync. The existing
   Application is managed by that ApplicationSet: do not create a second
   hand-managed Application or overwrite its generated source configuration.
   The `application` helper below is for an initial deployment only.
3. Manually sync the existing Application. Its migration hook verifies historical
   checksums, applies only `0003` and retains the runtime grants; collector wave 1
   follows migration wave 0. Confirm three migration-ledger entries, unchanged
   existing records, and compatible API/metrics before enabling timed producers.
4. Deploy Alloy's allowlist for `ops_worker_queue_wait_seconds_bucket` and
   `ops_worker_duration_seconds_bucket`, and separate worker timing Grafana panels.
   Keep the existing logical task timing charts separate. Queue timing measures
   submission-attempt to worker entry, including submission/startup overhead;
   execution timing measures worker entry to exit. Missing clocks stay unavailable.
5. Run the isolated real success/failure acceptance with the new producer, then
   replay its identical journal and verify API records and histogram counts stay
   unchanged. Retain Alan's operational-release gate for OPS-main merges.

Migration `0003` is additive and deliberately refuses schema downgrade. On rollback,
pause the new producer and preserve queued events and worker columns; do not send
new timed events to the earlier collector or remove already applied migration files.

### Initial deployment

1. In `chanzuckerberg/argus-infra-stacks`, review the Terraform plan (dedicated database, secrets, ECR), merge/apply this
   component through the normal workflow. No application is automatically synced
   by this PR. Confirm the two ExternalSecret source names exist and the existing
   secret-store role can read them. Terraform state contains generated credentials
   and must retain the platform backend's existing access controls.
2. From the root of a reviewed `chanzuckerberg/argo-helm-charts` checkout, publish the collector from the immutable revision in `provenance.json` (the worker-timing update on the #94/#85 foundation). On a build host with Python >=3.12, GitHub access,
   Docker/buildx and ECR push permission, authenticate Docker using the normal AWS
   ECR login, then run `python scripts/ops-collector-release.py build`. The script
   downloads that exact revision, verifies the complete source/chart migration
   sets and checksums, and builds/pushes
   a Linux amd64/arm64 image tagged with its source SHA. Obtain and record the digest:

   ```sh
   aws ecr describe-images --region us-east-1 --repository-name ops-telemetry \
     --image-ids imageTag=761c718e06c106a215aea3d79691a6b527d225e7 \
     --query 'imageDetails[0].imageDigest' --output text
   ```

   Use the `sci-data-prod` AWS profile or equivalent approved deployment identity.
   Never substitute `latest`. Image rendering fails without a valid digest. Updating
   the source revision requires refreshing the SQL files, provenance checksums and
   source pin check together; generated SQL is not independently edited.
3. Render a manual Argo application pointing to the reviewed **argo-helm-charts commit SHA**:

   ```sh
   python scripts/ops-collector-release.py application \
     --image "$OPS_COLLECTOR_IMAGE_DIGEST" --chart-revision "$OPS_CHART_COMMIT" \
     > /tmp/ops-telemetry-application.json
   ```

   `OPS_COLLECTOR_IMAGE_DIGEST` is the full ECR URL with `@sha256:...`.
   Review/apply this Application in the platform Argo control cluster and sync it
   manually. Do not apply it in the workload cluster's nonexistent Argo namespace.
   It is intentionally outside the auto-discovered ApplicationSet directory so
   merging cannot start a workload before the database and image exist.
4. ExternalSecrets/configs arrive first (wave -2); migration Job runs in wave 0;
   collector starts in wave 1. A failed migration blocks rollout. Inspect the job
   and ExternalSecret readiness; do not skip migrations to force a healthy sync.
   Migration uses the admin credential, an advisory transaction lock, checksums and
   a ledger; it grants `ops_collector` only data access. The collector has no schema
   creation rights and cannot alter the migration ledger. PostgreSQL connections
   verify hostname/certificate using the bundled official AWS RDS CA bundle.
5. Merge/sync [Alloy #3137](https://github.com/chanzuckerberg/argus-infra-stacks/pull/3137)
   and apply [Grafana #592](https://github.com/chanzuckerberg/core-platform-infra/pull/592)
   after their reviews. Neither is duplicated here. Verify one healthy pod scrape
   target: only the collector pod carries scrape annotations, never its Service.
   `Recreate` plus one replica avoids overlapping aggregate exporters; do not scale
   horizontally until metrics leader election/deduplication is implemented.
6. Install the pinned producer code in an isolated Bruno checkout and set its explicit
   `OPS_PROCESSING_TELEMETRY=1`, `OPS_TELEMETRY_ENDPOINT` (API host without `/api/v1`),
   `OPS_TELEMETRY_TOKEN`, private spool and test output roots. Deliver the token via
   the approved secret channel, not command-line arguments or ticket comments.
   Leave operational launch scripts unchanged. Alan's release is **not** required
   for this isolated live canary. Run DT-194's real success and failure checks.
7. Attach live evidence to DT-201/DT-196. Only after Alan verifies the operational
   release, rebase/revalidate and merge OPS #85/#94 and dependent tests, then enable
   the operational producer and repeat acceptance.

## Acceptance and diagnostics

Record exact source/image/chart/infra revisions, run IDs, times and these observations:

- TLS authentication: missing/invalid bearer credentials get 401 for event/run API;
  valid producer delivery receives acknowledgments. Public `/metrics` is unrouted.
- Collector readiness and migration completion; runtime DB account can ingest and
  read history, but cannot create schema or modify the migration ledger.
- Actual native run success/failure, step error messages and worker receipts in the
  authenticated run API. Launcher failures before SLURM submission have no job ID;
  test a worker failure separately. Per-run IDs/error strings stay out of metrics.
- One Alloy target, no remote-write errors/discards, fresh AMP query
  `{__name__=~"ops_.*",cluster="prod-sci-data"}`, and native workflow/environment
  labels. Check both timing histograms including buckets, sums/counts, cumulative
  finite buckets and `+Inf == count`; compare an existing non-OPS metric.
- Grafana dashboard `ops-pipeline-overview` exists and visibly reflects real
  success/failure and health. Database/API diagnostics do not imply clickable
  Grafana log navigation; track absent links explicitly.
- Stop/restart the isolated collector with a controlled test window; producers keep
  science running and spool events, restart drains the journal, replay does not
  increase counters, and historical events persist. Preserve the test journal.
- Leave optional Slack rules disabled until separately agreed/tested. No Explorer
  catalog registration is implied by this deployment.

## Operations and recovery

Monitor `/readyz`, failed migration jobs, ExternalSecret readiness, database space,
backup age, Alloy scrape/remote-write health and journal backlog. Acknowledge only
investigated incidents using the authenticated API; retain historical failures.

Rotation: change the approved Secrets Manager values through the owning Terraform
workflow, rerun the migration hook for runtime-password changes, restart the
collector (environment secrets are loaded only at process start), and coordinate
producer ingestion-token updates. A single ingestion token is supported; producers
may spool during rotation. Do not rotate the admin password outside the database
and secret's coordinated workflow.

Rollback: disable only the test producer's opt-in/delivery, preserve journals and
stop the Argo workload if necessary. Keep the database and secrets. SQL rollback is
not automatic; once native events exist, retain a processing-aware collector.
An infrastructure revert must not destroy the RDS instance. Restore backups/PITR
into a **new** private database, validate history and permissions, then update
secret connection URLs and restart the collector. Test restore in an isolated
environment before relying on it operationally. Remove duplicate exporters before
resuming scraping. TLS CA refresh comes from AWS's official RDS truststore and
requires a reviewed ConfigMap update plus workload restart.

## Validation

```sh
# Uses the repository-standard helm-unittest plugin and CI workflow:
helm unittest --strict ops-telemetry
HELM=helm python -m unittest discover -s tools/ops-telemetry/tests -p test_deployment.py -v
# Requires an EMPTY disposable PostgreSQL database; never a shared/production DB:
OPS_TEST_DATABASE_URL=... python -m unittest discover -s tools/ops-telemetry/tests -p test_migrations.py -v
```

The dedicated CI workflow runs rendering, migration/replay/drift/privilege tests
against PostgreSQL 16. Terraform validation and mocked plans run separately in
`argus-infra-stacks`. Actual cloud plans, image
publication, deployment and live acceptance remain distinct rollout evidence.
