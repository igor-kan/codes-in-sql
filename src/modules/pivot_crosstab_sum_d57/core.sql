CREATE TABLE pivot_crosstab_sum_d57_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'pivot_crosstab_sum_d57'
);
