CREATE TABLE progressive_tax_brackets_d61_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'progressive_tax_brackets_d61'
);
