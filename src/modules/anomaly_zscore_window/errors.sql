CREATE TABLE IF NOT EXISTS zsc_audit_log (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    check_name TEXT NOT NULL,
    detail TEXT NOT NULL,
    recorded_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS _sql_assertions (
    assertion_name TEXT PRIMARY KEY,
    passed INTEGER NOT NULL CHECK (passed = 1)
);

CREATE TRIGGER trg_metric_positive_id
BEFORE INSERT ON metric_stream
WHEN NEW.metric_id <= 0
BEGIN
    SELECT RAISE(ABORT, 'metric_id must be positive');
END;
