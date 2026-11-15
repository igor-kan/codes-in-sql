CREATE TABLE IF NOT EXISTS cyc_audit_log (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    check_name TEXT NOT NULL,
    detail TEXT NOT NULL,
    recorded_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS _sql_assertions (
    assertion_name TEXT PRIMARY KEY,
    passed INTEGER NOT NULL CHECK (passed = 1)
);

CREATE TRIGGER trg_dag_negative_guard
BEFORE INSERT ON dag_edges
WHEN NEW.src < 0 OR NEW.dst < 0
BEGIN
    SELECT RAISE(ABORT, 'vertex ids must be non-negative');
END;
