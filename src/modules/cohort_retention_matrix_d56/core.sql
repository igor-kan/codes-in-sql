CREATE TABLE cohort_retention_matrix_d56_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'cohort_retention_matrix_d56'
);
