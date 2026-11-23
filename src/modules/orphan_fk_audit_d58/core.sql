CREATE TABLE orphan_fk_audit_d58_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'orphan_fk_audit_d58'
);
