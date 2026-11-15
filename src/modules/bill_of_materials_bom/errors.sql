CREATE TABLE IF NOT EXISTS bom_audit_log (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    check_name TEXT NOT NULL,
    detail TEXT NOT NULL,
    recorded_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS _sql_assertions (
    assertion_name TEXT PRIMARY KEY,
    passed INTEGER NOT NULL CHECK (passed = 1)
);

CREATE TRIGGER trg_bom_self_guard
BEFORE INSERT ON bom_edges
WHEN NEW.parent_id = NEW.child_id
BEGIN
    SELECT RAISE(ABORT, 'self-referential BOM edge prohibited');
END;
