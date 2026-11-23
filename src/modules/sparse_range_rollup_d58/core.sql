CREATE TABLE sparse_range_rollup_d58_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'sparse_range_rollup_d58'
);
