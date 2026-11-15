CREATE TABLE IF NOT EXISTS fnl_audit_log (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    check_name TEXT NOT NULL,
    detail TEXT NOT NULL,
    recorded_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS _sql_assertions (
    assertion_name TEXT PRIMARY KEY,
    passed INTEGER NOT NULL CHECK (passed = 1)
);

CREATE TRIGGER trg_funnel_future_guard
BEFORE INSERT ON funnel_events
WHEN NEW.user_id <= 0
BEGIN
    SELECT RAISE(ABORT, 'user_id must be positive');
END;
