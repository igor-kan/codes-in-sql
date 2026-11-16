CREATE TABLE IF NOT EXISTS coh_audit_log (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    check_name TEXT NOT NULL,
    detail TEXT NOT NULL,
    recorded_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS _sql_assertions (
    assertion_name TEXT PRIMARY KEY,
    passed INTEGER NOT NULL CHECK (passed = 1)
);

CREATE TRIGGER trg_activity_before_signup_guard
BEFORE INSERT ON user_activity
WHEN NEW.active_month < (SELECT signup_month FROM users WHERE user_id = NEW.user_id)
BEGIN
    SELECT RAISE(ABORT, 'activity month precedes user signup month');
END;
