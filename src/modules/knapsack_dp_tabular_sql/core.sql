CREATE TABLE knapsack_dp_tabular_sql_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'knapsack_dp_tabular_sql'
);
