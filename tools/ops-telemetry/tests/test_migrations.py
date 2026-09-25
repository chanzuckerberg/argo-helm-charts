"""Requires a disposable, empty PostgreSQL database; never use a shared database."""
import hashlib
import importlib.util
import os
from pathlib import Path
import shutil
import tempfile
import unittest
import psycopg
from psycopg.conninfo import make_conninfo

ROOT = Path(__file__).resolve().parents[3]
FILES = ROOT / 'ops-telemetry/files'
spec = importlib.util.spec_from_file_location('migrate', FILES/'migrate.py')
migration = importlib.util.module_from_spec(spec); spec.loader.exec_module(migration)

# Bytes shipped with the deployed collector source e6b04967. Existing migrations
# are immutable even when the chart advances to a newer source revision.
LEGACY_HASHES = {
    '0001_live_telemetry.sql': '7fb581c7c3fade6caed5477818f580df9499fca3b52620530450eb961c4b5516',
    '0002_processing_telemetry.sql': '9284ecacab3eedd7edf85586dd932334966501ec5451a00d0f851cd081bf301d',
}
TIMING_COLUMNS = ['queued_at', 'worker_started_at', 'worker_finished_at', 'queue_s', 'duration_s']
PASSWORD = 'local-test-only-password'


def ledger(db):
    return dict(db.execute('SELECT name,sha256 FROM ops_schema_migrations ORDER BY name').fetchall())


def seed_legacy_evidence(db):
    db.execute("""
        INSERT INTO ops_telemetry_runs
            (run_id,workflow,execution_environment,collection_id,pipeline_version,started_at,status)
        VALUES ('retained-run','ops_processing','bruno','retained-experiment',
                'deployed-release','2026-09-24 12:00:00+00','running');
        INSERT INTO ops_telemetry_run_experiments VALUES ('retained-run','retained-experiment');
        INSERT INTO ops_telemetry_tasks
            (run_id,step_key,stage,label,execution_environment,required)
        VALUES ('retained-run','segment','segmentation','Segmentation','bruno',TRUE);
        INSERT INTO ops_telemetry_jobs
            (run_id,job_id,step_key,attempt,status,observed_at,started_at,finished_at,message)
        VALUES ('retained-run','legacy-job','segment',1,'completed',
                '2026-09-24 12:10:00+00','2026-09-24 12:00:00+00',
                '2026-09-24 12:10:00+00','Retained lifecycle evidence');
        INSERT INTO ops_telemetry_events (event_id,run_id,kind,observed_at,envelope)
        VALUES ('retained-event','retained-run','job_state','2026-09-24 12:10:00+00',
                '{"schema_version":2,"event_id":"retained-event","run_id":"retained-run",
                  "kind":"job_state","observed_at":"2026-09-24T12:10:00+00:00",
                  "payload":{"job_id":"legacy-job","step_key":"segment","attempt":1,
                             "status":"completed","parent_job_id":null,"scheduler_state":null,
                             "started_at":"2026-09-24T12:00:00+00:00",
                             "finished_at":"2026-09-24T12:10:00+00:00",
                             "message":"Retained lifecycle evidence"}}');
    """)


class MigrationTests(unittest.TestCase):
    def test_install_replay_drift_and_runtime_permissions(self):
        url = os.environ['OPS_TEST_DATABASE_URL']
        with psycopg.connect(url) as db:
            self.assertEqual(db.execute("SELECT count(*) FROM information_schema.tables WHERE table_schema='public'").fetchone()[0], 0, 'Use an empty disposable database')

        # Model the deployed chart, with populated evidence, before upgrading.
        with tempfile.TemporaryDirectory() as legacy:
            for name, expected_hash in LEGACY_HASHES.items():
                path = FILES/'migrations'/name
                self.assertEqual(hashlib.sha256(path.read_bytes()).hexdigest(), expected_hash)
                shutil.copy(path, legacy)
            migration.migrate(url, PASSWORD, legacy)
        with psycopg.connect(url) as db:
            self.assertEqual(ledger(db), LEGACY_HASHES)
            seed_legacy_evidence(db)
            runs_before = db.execute('SELECT to_jsonb(r) FROM ops_telemetry_runs r').fetchall()
            jobs_before = db.execute('SELECT to_jsonb(j) FROM ops_telemetry_jobs j').fetchall()
            events_before = db.execute('SELECT to_jsonb(e)::text FROM ops_telemetry_events e').fetchall()

        expected_hashes = {p.name: hashlib.sha256(p.read_bytes()).hexdigest()
                           for p in (FILES/'migrations').glob('[0-9]*.sql')}
        self.assertEqual(set(expected_hashes), set(LEGACY_HASHES) | {'0003_worker_timing.sql'})
        for _ in range(2):
            migration.migrate(url, PASSWORD, FILES/'migrations')
            with psycopg.connect(url) as db:
                self.assertEqual(ledger(db), expected_hashes)
                self.assertEqual({name: ledger(db)[name] for name in LEGACY_HASHES}, LEGACY_HASHES)
                self.assertEqual(db.execute('SELECT to_jsonb(r) FROM ops_telemetry_runs r').fetchall(), runs_before)
                self.assertEqual(db.execute('SELECT to_jsonb(j) - %s::text[] FROM ops_telemetry_jobs j', (TIMING_COLUMNS,)).fetchall(), jobs_before)
                self.assertEqual(db.execute('SELECT to_jsonb(e)::text FROM ops_telemetry_events e').fetchall(), events_before)
                self.assertEqual(db.execute('SELECT queued_at,worker_started_at,worker_finished_at,queue_s,duration_s FROM ops_telemetry_job_details').fetchall(), [(None,) * 5])

        with psycopg.connect(url) as db:
            self.assertFalse(db.execute("SELECT has_schema_privilege('ops_collector','public','CREATE')").fetchone()[0])
            self.assertFalse(db.execute("SELECT has_table_privilege('ops_collector','ops_schema_migrations','UPDATE')").fetchone()[0])
            self.assertTrue(db.execute("SELECT has_table_privilege('ops_collector','ops_telemetry_events','INSERT')").fetchone()[0])

        # Connect with the actual runtime identity; no migration-owner session or
        # SET ROLE is used to demonstrate access to the new columns and views.
        runtime_url = make_conninfo(url, user='ops_collector', password=PASSWORD)
        with psycopg.connect(runtime_url, autocommit=True) as runtime:
            self.assertEqual(runtime.execute('SELECT session_user,current_user').fetchone(), ('ops_collector', 'ops_collector'))
            runtime.execute("""
                INSERT INTO ops_telemetry_jobs
                    (run_id,job_id,step_key,attempt,status,observed_at,queued_at,worker_started_at)
                VALUES ('retained-run','timed-worker','segment',1,'running',
                        '2026-09-24 13:00:12.25+00','2026-09-24 13:00:00+00',
                        '2026-09-24 13:00:12.25+00')
            """)
            self.assertEqual(runtime.execute("SELECT queue_s,duration_s FROM ops_telemetry_job_details WHERE job_id='timed-worker'").fetchone(), (12.25, None))
            runtime.execute("""
                UPDATE ops_telemetry_jobs SET status='failed',
                    observed_at='2026-09-24 13:01:42.75+00',
                    finished_at='2026-09-24 13:01:42.75+00',
                    worker_finished_at='2026-09-24 13:01:42.75+00',message='Controlled test failure'
                WHERE job_id='timed-worker'
            """)
            self.assertEqual(runtime.execute("SELECT queue_s,duration_s FROM ops_telemetry_job_details WHERE job_id='timed-worker'").fetchone(), (12.25, 90.5))
            self.assertEqual(runtime.execute("SELECT scope,status,details FROM ops_telemetry_error_details WHERE job_id='timed-worker'").fetchall(), [('job', 'failed', 'Controlled test failure')])
            for statement in (
                'CREATE TABLE public.runtime_must_not_create (id integer)',
                'ALTER TABLE ops_telemetry_jobs ADD COLUMN runtime_must_not_add integer',
                "INSERT INTO ops_schema_migrations VALUES ('forged.sql','forged')",
                "UPDATE ops_schema_migrations SET sha256='forged'",
                'DELETE FROM ops_schema_migrations',
            ):
                with self.subTest(denied_statement=statement):
                    with self.assertRaises(psycopg.errors.InsufficientPrivilege):
                        with runtime.transaction():
                            runtime.execute(statement)

        # Both deployed migrations and the new upgrade remain protected against
        # drift. A rejected replay must preserve its ledger and worker evidence.
        for name in expected_hashes:
            with self.subTest(drifted_migration=name), tempfile.TemporaryDirectory() as temp:
                for path in (FILES/'migrations').glob('[0-9]*.sql'):
                    shutil.copy(path, temp)
                path = Path(temp)/name
                path.write_text(path.read_text()+'\n-- unexpected drift\n')
                with self.assertRaisesRegex(RuntimeError, 'Applied migration changed: ' + name):
                    migration.migrate(url, PASSWORD, temp)
                with psycopg.connect(url) as db:
                    self.assertEqual(ledger(db), expected_hashes)
                    self.assertEqual(db.execute("SELECT queue_s,duration_s FROM ops_telemetry_jobs WHERE job_id='timed-worker'").fetchone(), (12.25, 90.5))
        with psycopg.connect(url) as db:
            self.assertEqual(db.execute('SELECT count(*) FROM ops_schema_migrations').fetchone()[0], 3)
            self.assertEqual(db.execute('SELECT to_jsonb(e)::text FROM ops_telemetry_events e').fetchall(), events_before)

if __name__ == '__main__': unittest.main()
