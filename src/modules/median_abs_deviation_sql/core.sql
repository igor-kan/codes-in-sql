CREATE TABLE median_abs_deviation_sql_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'median_abs_deviation_sql'
);
