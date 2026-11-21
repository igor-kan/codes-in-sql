CREATE TABLE rolling_7d_window_avg_d56_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'rolling_7d_window_avg_d56'
);
