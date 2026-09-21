"""Apply pinned additive migrations transactionally; never run down migrations."""
import hashlib
import os
from pathlib import Path
import psycopg
from psycopg import sql


def migrate(url, password, directory):
    with psycopg.connect(url) as db:
        db.execute("SELECT pg_advisory_xact_lock(192019201)")
        db.execute("CREATE TABLE IF NOT EXISTS ops_schema_migrations (name text PRIMARY KEY, sha256 text NOT NULL)")
        for path in sorted(Path(directory).glob("[0-9]*.sql")):
            content = path.read_text()
            digest = hashlib.sha256(content.encode()).hexdigest()
            old = db.execute("SELECT sha256 FROM ops_schema_migrations WHERE name=%s", (path.name,)).fetchone()
            if old:
                if old[0] != digest:
                    raise RuntimeError("Applied migration changed: " + path.name)
                continue
            db.execute(content.split("-- +goose Down")[0])
            db.execute("INSERT INTO ops_schema_migrations VALUES (%s,%s)", (path.name, digest))
        if not db.execute("SELECT 1 FROM pg_roles WHERE rolname='ops_collector'").fetchone():
            db.execute("CREATE ROLE ops_collector LOGIN")
        db.execute(sql.SQL("ALTER ROLE ops_collector PASSWORD {}").format(sql.Literal(password)))
        db.execute("REVOKE CREATE ON SCHEMA public FROM PUBLIC")
        db.execute("GRANT USAGE ON SCHEMA public TO ops_collector")
        db.execute("GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO ops_collector")
        db.execute("REVOKE ALL ON ops_schema_migrations FROM ops_collector")
        db.execute("GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO ops_collector")
    print("OPS migrations and runtime grants complete")


if __name__ == "__main__":
    migrate(os.environ["DATABASE_URL"], os.environ["RUNTIME_PASSWORD"], Path(__file__).parent)
