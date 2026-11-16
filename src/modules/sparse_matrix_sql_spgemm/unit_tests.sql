INSERT INTO mat_a (i, k, v) VALUES
(0, 0, 2.0), (0, 1, -1.0), (1, 0, 3.0), (1, 1, 4.0);

INSERT INTO mat_b (k, j, v) VALUES
(0, 0, 5.0), (0, 1, 1.0), (1, 0, -2.0), (1, 1, 6.0);

-- A*B[0,0] = 2*5 + (-1)*(-2) = 12; A*B[1,1] = 3*1 + 4*6 = 27 => trace = 39
INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'spgemm_exact_39',
       CASE WHEN ABS((SELECT tr_ab FROM v_trace_compare) - 39.0) < 1e-9 THEN 1 ELSE 0 END;
