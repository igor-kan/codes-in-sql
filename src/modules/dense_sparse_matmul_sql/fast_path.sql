CREATE INDEX IF NOT EXISTS idx_dense_sparse_matmul_sql_runs_ok ON dense_sparse_matmul_sql_runs(ok);
SELECT COUNT(*) AS run_count
FROM dense_sparse_matmul_sql_runs
WHERE ok = 1;
