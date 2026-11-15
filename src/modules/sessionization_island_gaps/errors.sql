CREATE TABLE IF NOT EXISTS sess_audit_log (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    check_name TEXT NOT NULL,
    detail TEXT NOT NULL,
    recorded_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS _sql_assertions (
    assertion_name TEXT PRIMARY KEY,
    passed INTEGER NOT NULL CHECK (passed = 1)
);

CREATE TRIGGER trg_click_events_monotonic_guard
BEFORE INSERT ON click_events
WHEN NEW.event_ts < 0 OR length(NEW.page_path) = 0
BEGIN
    SELECT RAISE(ABORT, 'invalid click event timestamp or empty page_path');
END;
