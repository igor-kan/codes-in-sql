INSERT INTO dense_sparse_matmul_sql_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM dense_sparse_matmul_sql_runs
WHERE ok = 1;
