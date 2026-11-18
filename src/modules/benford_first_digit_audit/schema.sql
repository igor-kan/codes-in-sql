CREATE TABLE ledger_entries (entry_id INTEGER PRIMARY KEY,
    amount REAL NOT NULL CHECK(amount >= 1.0));
CREATE TABLE IF NOT EXISTS benford_first_digit_audit_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
