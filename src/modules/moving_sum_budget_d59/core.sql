CREATE TABLE moving_sum_budget_d59_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'moving_sum_budget_d59'
);
