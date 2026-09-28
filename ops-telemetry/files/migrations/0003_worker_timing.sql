-- +goose Up
-- Preserve lifecycle timestamps and old evidence. Worker receipt timestamps are
-- separate measurements: do not infer them from scheduler state or backfill them.
-- A worker cancellation receipt alone can mean preemption/requeue; its duration
-- becomes terminal evidence only when scheduler cancellation is confirmed.
ALTER TABLE ops_telemetry_jobs
    ADD COLUMN queued_at TIMESTAMPTZ,
    ADD COLUMN worker_started_at TIMESTAMPTZ,
    ADD COLUMN worker_finished_at TIMESTAMPTZ,
    ADD COLUMN queue_s DOUBLE PRECISION GENERATED ALWAYS AS (
        EXTRACT(EPOCH FROM (worker_started_at - queued_at))::DOUBLE PRECISION
    ) STORED,
    ADD COLUMN duration_s DOUBLE PRECISION GENERATED ALWAYS AS (
        CASE WHEN status IN ('completed','failed') OR
                  (status='cancelled' AND split_part(scheduler_state,' ',1)='CANCELLED')
            THEN EXTRACT(EPOCH FROM (worker_finished_at - worker_started_at))::DOUBLE PRECISION
            ELSE NULL
        END
    ) STORED,
    ADD CONSTRAINT ops_telemetry_jobs_queue_before_worker_start
        CHECK (queued_at IS NULL OR worker_started_at IS NULL OR queued_at <= worker_started_at),
    ADD CONSTRAINT ops_telemetry_jobs_worker_start_before_finish
        CHECK (worker_started_at IS NULL OR worker_finished_at IS NULL OR worker_started_at <= worker_finished_at),
    ADD CONSTRAINT ops_telemetry_jobs_queue_before_worker_finish
        CHECK (queued_at IS NULL OR worker_finished_at IS NULL OR queued_at <= worker_finished_at);

-- Appending columns keeps the view identity, grants, options and dependent
-- error-detail view intact. No access policy or table RLS setting is changed.
-- CREATE OR REPLACE resets reloptions unless they are restored explicitly.
-- +goose StatementBegin
DO $$
DECLARE view_options TEXT;
BEGIN
    SELECT array_to_string(reloptions,',') INTO view_options
    FROM pg_class WHERE oid='ops_telemetry_job_details'::regclass;
    CREATE OR REPLACE VIEW ops_telemetry_job_details AS
    SELECT r.workflow,r.experiment_id,r.collection_id,t.stage,t.label,t.execution_environment,j.*
    FROM ops_telemetry_processing_runs r JOIN ops_telemetry_tasks t USING (run_id)
    JOIN ops_telemetry_jobs j USING (run_id,step_key);
    IF view_options IS NOT NULL THEN
        EXECUTE format('ALTER VIEW ops_telemetry_job_details SET (%s)',view_options);
    END IF;
END $$;
-- +goose StatementEnd

-- +goose Down
-- Rolling back a collector need not remove nullable, additive database fields.
-- Refuse schema downgrade even when empty: dropping views or columns could erase
-- receipt evidence, grants and downstream dependencies created after rollout.
-- +goose StatementBegin
DO $$ BEGIN
    RAISE EXCEPTION 'worker timing schema is additive; keep the additive schema when rolling back the collector';
END $$;
-- +goose StatementEnd
