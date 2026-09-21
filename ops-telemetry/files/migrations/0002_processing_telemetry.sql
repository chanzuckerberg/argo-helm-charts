-- +goose Up
ALTER TABLE ops_telemetry_runs DROP CONSTRAINT ops_telemetry_runs_workflow_check;
ALTER TABLE ops_telemetry_runs ADD CONSTRAINT ops_telemetry_runs_workflow_check
    CHECK (workflow IN ('ops_portal','ops_processing'));
ALTER TABLE ops_telemetry_runs DROP CONSTRAINT ops_telemetry_runs_status_check;
ALTER TABLE ops_telemetry_runs ADD CONSTRAINT ops_telemetry_runs_status_check
    CHECK (status IN ('running','completed','failed','cancelled','incomplete'));

-- A processing invocation owns one experiment, including at transaction commit.
-- Portal runs retain their existing many-experiment collection membership.
-- +goose StatementBegin
CREATE FUNCTION ops_telemetry_check_processing_membership() RETURNS trigger AS $$
DECLARE candidate TEXT;
BEGIN
    FOR candidate IN SELECT run_id FROM ops_telemetry_runs
        WHERE run_id IN (NEW.run_id, OLD.run_id) AND workflow='ops_processing'
    LOOP
        IF (SELECT count(*) FROM ops_telemetry_run_experiments WHERE run_id=candidate) <> 1 THEN
            RAISE EXCEPTION 'ops_processing requires exactly one experiment per invocation'
                USING ERRCODE='23514';
        END IF;
    END LOOP;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
-- +goose StatementEnd
CREATE CONSTRAINT TRIGGER ops_telemetry_processing_run_membership
    AFTER INSERT OR UPDATE ON ops_telemetry_runs DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE FUNCTION ops_telemetry_check_processing_membership();
CREATE CONSTRAINT TRIGGER ops_telemetry_processing_member_count
    AFTER INSERT OR UPDATE OR DELETE ON ops_telemetry_run_experiments DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE FUNCTION ops_telemetry_check_processing_membership();

CREATE TABLE ops_telemetry_jobs (
    run_id TEXT NOT NULL,
    job_id TEXT NOT NULL,
    step_key TEXT NOT NULL,
    attempt INTEGER NOT NULL CHECK (attempt >= 1),
    status TEXT NOT NULL CHECK (status IN ('queued','running','completed','failed','cancelled','unknown')),
    parent_job_id TEXT,
    scheduler_state TEXT,
    message TEXT,
    observed_at TIMESTAMPTZ NOT NULL,
    started_at TIMESTAMPTZ,
    finished_at TIMESTAMPTZ,
    PRIMARY KEY (run_id,job_id),
    FOREIGN KEY (run_id,step_key) REFERENCES ops_telemetry_tasks,
    CHECK (parent_job_id IS NULL OR parent_job_id <> job_id),
    CHECK (started_at IS NULL OR finished_at IS NULL OR finished_at >= started_at)
);
CREATE INDEX ops_telemetry_jobs_task_attempt_idx ON ops_telemetry_jobs(run_id,step_key,attempt);

-- Detail views intentionally exclude collection-wide portal tasks. Joining a
-- portal run to every collection member would fabricate task ownership.
CREATE VIEW ops_telemetry_processing_runs AS
SELECT r.*, e.experiment_id
FROM ops_telemetry_runs r JOIN ops_telemetry_run_experiments e USING (run_id)
WHERE r.workflow='ops_processing';

CREATE VIEW ops_telemetry_experiment_status AS
SELECT DISTINCT ON (r.execution_environment,r.experiment_id)
       r.*, h.observed_at AS launcher_observed_at,
       (SELECT count(*) FROM ops_telemetry_task_status t WHERE t.run_id=r.run_id AND t.status='waiting') AS waiting_steps
FROM ops_telemetry_processing_runs r
LEFT JOIN ops_telemetry_heartbeats h ON h.run_id=r.run_id AND h.producer='launcher'
ORDER BY r.execution_environment,r.experiment_id,r.started_at DESC,r.run_id DESC;

CREATE VIEW ops_telemetry_step_details AS
SELECT r.workflow,r.experiment_id,r.collection_id,r.pipeline_version,r.started_at AS run_started_at,
       r.status AS run_status,t.*
FROM ops_telemetry_processing_runs r JOIN ops_telemetry_task_status t USING (run_id);

CREATE VIEW ops_telemetry_attempt_details AS
SELECT r.workflow,r.experiment_id,r.collection_id,r.pipeline_version,t.stage,t.label,
       t.execution_environment,a.*
FROM ops_telemetry_processing_runs r JOIN ops_telemetry_tasks t USING (run_id)
JOIN ops_telemetry_attempts a USING (run_id,step_key);

CREATE VIEW ops_telemetry_job_details AS
SELECT r.workflow,r.experiment_id,r.collection_id,t.stage,t.label,t.execution_environment,j.*
FROM ops_telemetry_processing_runs r JOIN ops_telemetry_tasks t USING (run_id)
JOIN ops_telemetry_jobs j USING (run_id,step_key);

CREATE VIEW ops_telemetry_error_details AS
SELECT r.workflow,r.experiment_id,r.execution_environment,r.run_id,
       'run'::TEXT AS scope,NULL::TEXT AS step_key,NULL::INTEGER AS attempt,
       NULL::TEXT AS job_id,r.status,r.message AS details,r.finished_at AS observed_at
FROM ops_telemetry_processing_runs r WHERE r.status IN ('failed','cancelled','incomplete')
UNION ALL
SELECT workflow,experiment_id,execution_environment,run_id,'attempt',step_key,attempt,
       job_id,status,message,observed_at
FROM ops_telemetry_attempt_details WHERE status IN ('failed','cancelled','blocked')
UNION ALL
SELECT workflow,experiment_id,execution_environment,run_id,'job',step_key,attempt,
       job_id,status,message,observed_at
FROM ops_telemetry_job_details WHERE status IN ('failed','cancelled')
UNION ALL
SELECT r.workflow,r.experiment_id,r.execution_environment,c.run_id,'check',c.step_key,NULL::INTEGER,
       NULL::TEXT,c.status,c.details,c.observed_at
FROM ops_telemetry_processing_runs r JOIN ops_telemetry_checks c USING (run_id) WHERE c.status='fail';

-- Views define data, not access policy. Provision a SELECT-only Grafana role on
-- approved views separately; this migration creates no roles or grants.

-- +goose Down
-- Never erase processing evidence or silently roll back the semantic contract.
-- +goose StatementBegin
DO $$ BEGIN
    IF EXISTS (SELECT 1 FROM ops_telemetry_runs WHERE workflow='ops_processing' OR status='incomplete')
       OR EXISTS (SELECT 1 FROM ops_telemetry_jobs) THEN
        RAISE EXCEPTION 'processing telemetry exists; keep a workflow-aware collector and schema';
    END IF;
END $$;
-- +goose StatementEnd
DROP VIEW ops_telemetry_error_details;
DROP VIEW ops_telemetry_job_details;
DROP VIEW ops_telemetry_attempt_details;
DROP VIEW ops_telemetry_step_details;
DROP VIEW ops_telemetry_experiment_status;
DROP VIEW ops_telemetry_processing_runs;
DROP TABLE ops_telemetry_jobs;
DROP TRIGGER ops_telemetry_processing_member_count ON ops_telemetry_run_experiments;
DROP TRIGGER ops_telemetry_processing_run_membership ON ops_telemetry_runs;
DROP FUNCTION ops_telemetry_check_processing_membership();
ALTER TABLE ops_telemetry_runs DROP CONSTRAINT ops_telemetry_runs_workflow_check;
ALTER TABLE ops_telemetry_runs ADD CONSTRAINT ops_telemetry_runs_workflow_check CHECK (workflow='ops_portal');
ALTER TABLE ops_telemetry_runs DROP CONSTRAINT ops_telemetry_runs_status_check;
ALTER TABLE ops_telemetry_runs ADD CONSTRAINT ops_telemetry_runs_status_check CHECK (status IN ('running','completed','failed','cancelled'));
