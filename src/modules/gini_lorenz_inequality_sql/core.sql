CREATE TABLE gini_lorenz_inequality_sql_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'gini_lorenz_inequality_sql'
);
