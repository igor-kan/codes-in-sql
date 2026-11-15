CREATE TABLE IF NOT EXISTS qtl_audit_log (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    check_name TEXT NOT NULL,
    detail TEXT NOT NULL,
    recorded_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS _sql_assertions (
    assertion_name TEXT PRIMARY KEY,
    passed INTEGER NOT NULL CHECK (passed = 1)
);

CREATE TRIGGER trg_latency_nonneg
BEFORE INSERT ON telemetry_samples
WHEN NEW.latency_ms < 0.0
BEGIN
    SELECT RAISE(ABORT, 'latency_ms must be non-negative');
END;
