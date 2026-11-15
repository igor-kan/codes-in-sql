CREATE TABLE IF NOT EXISTS intv_audit_log (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    check_name TEXT NOT NULL,
    detail TEXT NOT NULL,
    recorded_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS _sql_assertions (
    assertion_name TEXT PRIMARY KEY,
    passed INTEGER NOT NULL CHECK (passed = 1)
);

CREATE TRIGGER trg_interval_order_guard
BEFORE INSERT ON raw_intervals
WHEN NEW.end_ts < NEW.start_ts
BEGIN
    SELECT RAISE(ABORT, 'interval end_ts precedes start_ts');
END;
