CREATE TEMP TABLE _dense_sparse_matmul_sql_prop(flag INTEGER);
CREATE TEMP TRIGGER _dense_sparse_matmul_sql_prop_trg BEFORE INSERT ON _dense_sparse_matmul_sql_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_mat_c) = 4) THEN RAISE(ABORT, 'property assertion failed for dense_sparse_matmul_sql') END; END;
INSERT INTO _dense_sparse_matmul_sql_prop VALUES (1);
