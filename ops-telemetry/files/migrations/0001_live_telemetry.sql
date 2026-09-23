-- +goose Up
-- Standalone live collection schema for event contract version 2.
CREATE TABLE ops_telemetry_runs (
    run_id TEXT PRIMARY KEY,
    workflow TEXT NOT NULL CHECK (workflow = 'ops_portal'),
    execution_environment TEXT NOT NULL CHECK (execution_environment IN ('bruno','cloud','local')),
    collection_id TEXT NOT NULL,
    pipeline_version TEXT NOT NULL,
    started_at TIMESTAMPTZ NOT NULL,
    finished_at TIMESTAMPTZ,
    status TEXT NOT NULL CHECK (status IN ('running','completed','failed','cancelled')),
    plan_sealed BOOLEAN NOT NULL DEFAULT FALSE,
    metadata JSONB NOT NULL DEFAULT '{}',
    message TEXT,
    CHECK (finished_at IS NULL OR finished_at >= started_at)
);
CREATE TABLE ops_telemetry_run_experiments (
    run_id TEXT NOT NULL REFERENCES ops_telemetry_runs,
    experiment_id TEXT NOT NULL,
    PRIMARY KEY (run_id, experiment_id)
);
CREATE TABLE ops_telemetry_tasks (
    run_id TEXT NOT NULL REFERENCES ops_telemetry_runs,
    step_key TEXT NOT NULL,
    stage TEXT NOT NULL,
    label TEXT NOT NULL,
    execution_environment TEXT NOT NULL,
    required BOOLEAN NOT NULL,
    runtime_budget_s DOUBLE PRECISION,
    queue_budget_s DOUBLE PRECISION,
    PRIMARY KEY (run_id, step_key)
);
CREATE TABLE ops_telemetry_events (
    event_id TEXT PRIMARY KEY,
    run_id TEXT NOT NULL REFERENCES ops_telemetry_runs,
    kind TEXT NOT NULL,
    observed_at TIMESTAMPTZ NOT NULL,
    received_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    envelope JSONB NOT NULL
);
CREATE INDEX ops_telemetry_events_run_time_idx ON ops_telemetry_events (run_id, observed_at);
CREATE TABLE ops_telemetry_attempts (
    run_id TEXT NOT NULL,
    step_key TEXT NOT NULL,
    attempt INTEGER NOT NULL CHECK (attempt >= 1),
    status TEXT NOT NULL,
    executor TEXT NOT NULL,
    observed_at TIMESTAMPTZ NOT NULL,
    queued_at TIMESTAMPTZ,
    started_at TIMESTAMPTZ,
    finished_at TIMESTAMPTZ,
    duration_s DOUBLE PRECISION,
    queue_s DOUBLE PRECISION,
    cpu_percent DOUBLE PRECISION,
    memory_peak_bytes BIGINT,
    gpu_util_percent DOUBLE PRECISION,
    job_id TEXT,
    host TEXT,
    message TEXT,
    log_url TEXT,
    payload_bytes_copied BIGINT,
    payload_bytes_hardlinked BIGINT,
    publication_bytes_completed BIGINT,
    publication_scope TEXT,
    PRIMARY KEY (run_id, step_key, attempt),
    FOREIGN KEY (run_id, step_key) REFERENCES ops_telemetry_tasks
);
CREATE VIEW ops_telemetry_task_status AS
SELECT t.*, COALESCE(a.status,'not_reported') AS status,
       a.attempt, COALESCE(a.executor,'unknown') AS executor,
       a.observed_at, a.queued_at, a.started_at, a.finished_at,
       a.duration_s, a.queue_s, a.cpu_percent, a.memory_peak_bytes,
       a.gpu_util_percent, a.job_id, a.host, a.message, a.log_url
FROM ops_telemetry_tasks t LEFT JOIN LATERAL (
    SELECT * FROM ops_telemetry_attempts a
    WHERE a.run_id = t.run_id AND a.step_key = t.step_key
    ORDER BY attempt DESC LIMIT 1
) a ON TRUE;
CREATE TABLE ops_telemetry_heartbeats (
    run_id TEXT NOT NULL REFERENCES ops_telemetry_runs,
    producer TEXT NOT NULL,
    observed_at TIMESTAMPTZ NOT NULL,
    backlog_events BIGINT,
    oldest_pending_age_s DOUBLE PRECISION,
    PRIMARY KEY (run_id, producer)
);
CREATE TABLE ops_telemetry_progress (
    run_id TEXT NOT NULL,
    step_key TEXT NOT NULL,
    attempt INTEGER NOT NULL,
    unit TEXT NOT NULL,
    observed_at TIMESTAMPTZ NOT NULL,
    completed BIGINT NOT NULL,
    total BIGINT,
    PRIMARY KEY (run_id, step_key, attempt, unit),
    FOREIGN KEY (run_id, step_key) REFERENCES ops_telemetry_tasks
);
CREATE TABLE ops_telemetry_checks (
    run_id TEXT NOT NULL REFERENCES ops_telemetry_runs,
    check_key TEXT NOT NULL,
    status TEXT NOT NULL,
    required BOOLEAN NOT NULL,
    details TEXT NOT NULL,
    step_key TEXT,
    observed_at TIMESTAMPTZ NOT NULL,
    PRIMARY KEY (run_id, check_key),
    FOREIGN KEY (run_id, step_key) REFERENCES ops_telemetry_tasks
);
CREATE TABLE ops_telemetry_artifacts (
    run_id TEXT NOT NULL REFERENCES ops_telemetry_runs,
    artifact_key TEXT NOT NULL,
    uri TEXT NOT NULL,
    kind TEXT NOT NULL,
    observed_at TIMESTAMPTZ NOT NULL,
    PRIMARY KEY (run_id, artifact_key)
);
CREATE TABLE ops_telemetry_acknowledgments (
    run_id TEXT NOT NULL REFERENCES ops_telemetry_runs,
    incident_key TEXT NOT NULL,
    reason TEXT NOT NULL,
    observed_at TIMESTAMPTZ NOT NULL,
    PRIMARY KEY (run_id, incident_key)
);

-- +goose Down
DROP TABLE ops_telemetry_acknowledgments;
DROP TABLE ops_telemetry_artifacts;
DROP TABLE ops_telemetry_checks;
DROP TABLE ops_telemetry_progress;
DROP TABLE ops_telemetry_heartbeats;
DROP VIEW ops_telemetry_task_status;
DROP TABLE ops_telemetry_attempts;
DROP TABLE ops_telemetry_events;
DROP TABLE ops_telemetry_tasks;
DROP TABLE ops_telemetry_run_experiments;
DROP TABLE ops_telemetry_runs;
