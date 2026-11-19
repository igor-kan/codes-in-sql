CREATE VIEW v_mat_c AS SELECT a.i, b.j, SUM(a.v * b.v) AS val
FROM mat_a a JOIN mat_b b ON a.k = b.k GROUP BY a.i, b.j HAVING ABS(SUM(a.v * b.v)) > 1e-12;
INSERT OR IGNORE INTO dense_sparse_matmul_sql_meta VALUES ('module', 'dense_sparse_matmul_sql');
