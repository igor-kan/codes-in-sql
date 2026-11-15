CREATE TABLE IF NOT EXISTS fifo_audit_log (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    check_name TEXT NOT NULL,
    detail TEXT NOT NULL,
    recorded_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS _sql_assertions (
    assertion_name TEXT PRIMARY KEY,
    passed INTEGER NOT NULL CHECK (passed = 1)
);

CREATE TRIGGER trg_lot_positive_qty
BEFORE INSERT ON inventory_lots
WHEN NEW.qty <= 0 OR NEW.unit_cost < 0.0
BEGIN
    SELECT RAISE(ABORT, 'lot requires positive qty and non-negative unit_cost');
END;
