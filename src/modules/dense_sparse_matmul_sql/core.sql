CREATE TABLE dense_sparse_matmul_sql_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'dense_sparse_matmul_sql'
);
