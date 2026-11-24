CREATE TABLE top_per_category_rn_d59_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'top_per_category_rn_d59'
);
