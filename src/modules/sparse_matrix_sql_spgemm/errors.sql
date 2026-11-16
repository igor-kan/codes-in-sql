CREATE TABLE IF NOT EXISTS spgemm_audit_log (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    check_name TEXT NOT NULL,
    detail TEXT NOT NULL,
    recorded_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS _sql_assertions (
    assertion_name TEXT PRIMARY KEY,
    passed INTEGER NOT NULL CHECK (passed = 1)
);

CREATE TRIGGER trg_mat_a_nonzero
BEFORE INSERT ON mat_a
WHEN NEW.v = 0.0
BEGIN
    SELECT RAISE(ABORT, 'explicit zero stored in sparse COO matrix');
END;
