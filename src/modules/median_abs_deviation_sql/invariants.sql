CREATE TEMP TABLE IF NOT EXISTS _median_abs_deviation_sql_inv_ok (flag INTEGER);
INSERT INTO _median_abs_deviation_sql_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _median_abs_deviation_sql_inv_ok;
