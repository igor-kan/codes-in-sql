CREATE TABLE exponential_ewma_alpha_sql_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'exponential_ewma_alpha_sql'
);
