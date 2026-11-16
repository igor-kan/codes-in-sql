CREATE TABLE IF NOT EXISTS mkt_audit_log (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    check_name TEXT NOT NULL,
    detail TEXT NOT NULL,
    recorded_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS _sql_assertions (
    assertion_name TEXT PRIMARY KEY,
    passed INTEGER NOT NULL CHECK (passed = 1)
);

CREATE TRIGGER trg_order_item_guard
BEFORE INSERT ON order_items
WHEN NEW.item_id <= 0 OR NEW.order_id <= 0
BEGIN
    SELECT RAISE(ABORT, 'order_id and item_id must be positive');
END;
