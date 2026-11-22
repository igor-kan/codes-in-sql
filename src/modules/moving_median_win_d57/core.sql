CREATE TABLE moving_median_win_d57_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'moving_median_win_d57'
);
