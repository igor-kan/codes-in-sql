CREATE TABLE IF NOT EXISTS topk_audit_log (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    check_name TEXT NOT NULL,
    detail TEXT NOT NULL,
    recorded_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS _sql_assertions (
    assertion_name TEXT PRIMARY KEY,
    passed INTEGER NOT NULL CHECK (passed = 1)
);

CREATE TRIGGER trg_item_score_finite_check
BEFORE INSERT ON category_items
WHEN NEW.updated_at < 0
BEGIN
    SELECT RAISE(ABORT, 'negative updated_at forbidden');
END;
