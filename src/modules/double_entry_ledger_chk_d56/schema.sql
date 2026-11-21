CREATE TABLE d56_ledger (tx_id INTEGER NOT NULL,
    acct TEXT NOT NULL,
    delta INTEGER NOT NULL);
CREATE TABLE IF NOT EXISTS double_entry_ledger_chk_d56_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
