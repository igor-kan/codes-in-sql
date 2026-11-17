CREATE TABLE sliding_quantile_histogram_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'sliding_quantile_histogram'
);
