BEGIN IMMEDIATE;
INSERT INTO dense_sparse_matmul_sql_runs (ok, note) VALUES (1, 'tx_update');
UPDATE dense_sparse_matmul_sql_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
