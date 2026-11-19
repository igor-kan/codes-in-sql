INSERT INTO mat_a VALUES (1,1,2),(1,2,3),(2,2,4); INSERT INTO mat_b VALUES (1,1,5),(2,1,6),(2,2,7);
CREATE TEMP TABLE _dense_sparse_matmul_sql_chk(flag INTEGER);
CREATE TEMP TRIGGER _dense_sparse_matmul_sql_chk_trg BEFORE INSERT ON _dense_sparse_matmul_sql_chk
BEGIN SELECT CASE WHEN NOT ((SELECT val FROM v_mat_c WHERE i=1 AND j=1) = 28.0 AND (SELECT val FROM v_mat_c WHERE i=2 AND j=2) = 28.0) THEN RAISE(ABORT, 'unit assertion failed for dense_sparse_matmul_sql') END; END;
INSERT INTO _dense_sparse_matmul_sql_chk VALUES (1);
