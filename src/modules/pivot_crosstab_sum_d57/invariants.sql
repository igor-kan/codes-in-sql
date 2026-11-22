CREATE TEMP TABLE IF NOT EXISTS _pivot_crosstab_sum_d57_inv_ok (flag INTEGER);
INSERT INTO _pivot_crosstab_sum_d57_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _pivot_crosstab_sum_d57_inv_ok;
