WITH RECURSIVE idx(t) AS (SELECT 10 UNION ALL SELECT t + 1 FROM idx WHERE t < 29)
INSERT INTO mat_a (i, k, v)
SELECT t, t, 1.5 FROM idx;

WITH RECURSIVE idx2(t) AS (SELECT 10 UNION ALL SELECT t + 1 FROM idx2 WHERE t < 29)
INSERT INTO mat_b (k, j, v)
SELECT t, t, 2.0 FROM idx2;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'diag_product_val',
       CASE WHEN ABS((SELECT val FROM v_spgemm_ab WHERE row_idx = 15 AND col_idx = 15) - 3.0) < 1e-9 THEN 1 ELSE 0 END;
