CREATE TABLE cumulative_pct_share_d58_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'cumulative_pct_share_d58'
);
