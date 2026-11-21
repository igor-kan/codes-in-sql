CREATE TABLE double_entry_ledger_chk_d56_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'double_entry_ledger_chk_d56'
);
