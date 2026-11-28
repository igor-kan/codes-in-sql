CREATE TABLE IF NOT EXISTS divisor_sigma_d61_audit_errors (
    err_id INTEGER PRIMARY KEY AUTOINCREMENT,
    err_code TEXT NOT NULL CHECK(length(err_code) > 0),
    err_detail TEXT NOT NULL,
    recorded_at TEXT NOT NULL DEFAULT (datetime('now'))
);
