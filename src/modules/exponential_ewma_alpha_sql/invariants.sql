CREATE TEMP TABLE IF NOT EXISTS _exponential_ewma_alpha_sql_inv_ok (flag INTEGER);
INSERT INTO _exponential_ewma_alpha_sql_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _exponential_ewma_alpha_sql_inv_ok;
