CREATE TABLE IF NOT EXISTS scd_audit_log (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    check_name TEXT NOT NULL,
    detail TEXT NOT NULL,
    recorded_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS _sql_assertions (
    assertion_name TEXT PRIMARY KEY,
    passed INTEGER NOT NULL CHECK (passed = 1)
);

CREATE TRIGGER trg_scd2_prevent_overlap
BEFORE INSERT ON customer_tier_scd2
WHEN EXISTS (
    SELECT 1 FROM customer_tier_scd2 c
    WHERE c.customer_id = NEW.customer_id
      AND NEW.valid_from < c.valid_to
      AND c.valid_from < NEW.valid_to
)
BEGIN
    SELECT RAISE(ABORT, 'overlapping SCD2 effective interval');
END;
