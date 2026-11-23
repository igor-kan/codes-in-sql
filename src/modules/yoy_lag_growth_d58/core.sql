CREATE TABLE yoy_lag_growth_d58_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'yoy_lag_growth_d58'
);
