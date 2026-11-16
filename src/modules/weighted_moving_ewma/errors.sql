CREATE TABLE IF NOT EXISTS ewma_audit_log (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    check_name TEXT NOT NULL,
    detail TEXT NOT NULL,
    recorded_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS _sql_assertions (
    assertion_name TEXT PRIMARY KEY,
    passed INTEGER NOT NULL CHECK (passed = 1)
);

CREATE TRIGGER trg_ewma_seq_positive
BEFORE INSERT ON metric_ticks
WHEN NEW.seq_no < 1
BEGIN
    SELECT RAISE(ABORT, 'seq_no must be >= 1');
END;
