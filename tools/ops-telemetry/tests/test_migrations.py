"""Requires a disposable, empty PostgreSQL database; never use a shared database."""
import hashlib
import importlib.util
import os
from pathlib import Path
import shutil
import tempfile
import unittest
import psycopg

ROOT = Path(__file__).resolve().parents[3]
FILES = ROOT / 'ops-telemetry/files'
spec = importlib.util.spec_from_file_location('migrate', FILES/'migrate.py')
migration = importlib.util.module_from_spec(spec); spec.loader.exec_module(migration)


class MigrationTests(unittest.TestCase):
    def test_install_replay_drift_and_runtime_permissions(self):
        url = os.environ['OPS_TEST_DATABASE_URL']
        with psycopg.connect(url) as db:
            self.assertEqual(db.execute("SELECT count(*) FROM information_schema.tables WHERE table_schema='public'").fetchone()[0], 0, 'Use an empty disposable database')
        migration.migrate(url, 'local-test-only-password', FILES/'migrations')
        migration.migrate(url, 'local-test-only-password', FILES/'migrations')
        with psycopg.connect(url) as db:
            self.assertEqual(db.execute('SELECT count(*) FROM ops_schema_migrations').fetchone()[0], 2)
            self.assertFalse(db.execute("SELECT has_schema_privilege('ops_collector','public','CREATE')").fetchone()[0])
            self.assertFalse(db.execute("SELECT has_table_privilege('ops_collector','ops_schema_migrations','UPDATE')").fetchone()[0])
            self.assertTrue(db.execute("SELECT has_table_privilege('ops_collector','ops_telemetry_events','INSERT')").fetchone()[0])
            db.execute('SET ROLE ops_collector')
            db.execute('SELECT * FROM ops_telemetry_error_details LIMIT 1')
        with tempfile.TemporaryDirectory() as temp:
            for p in (FILES/'migrations').glob('[0-9]*.sql'): shutil.copy(p, temp)
            p = Path(temp)/'0001_live_telemetry.sql'; p.write_text(p.read_text()+'\n-- unexpected drift\n')
            with self.assertRaisesRegex(RuntimeError, 'Applied migration changed'):
                migration.migrate(url, 'local-test-only-password', temp)
        with psycopg.connect(url) as db:
            self.assertEqual(db.execute('SELECT count(*) FROM ops_schema_migrations').fetchone()[0], 2)

if __name__ == '__main__': unittest.main()
