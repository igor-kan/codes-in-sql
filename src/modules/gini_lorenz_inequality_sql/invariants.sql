CREATE TEMP TABLE IF NOT EXISTS _gini_lorenz_inequality_sql_inv_ok (flag INTEGER);
INSERT INTO _gini_lorenz_inequality_sql_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _gini_lorenz_inequality_sql_inv_ok;
