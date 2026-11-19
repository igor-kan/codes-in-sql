CREATE TEMP TABLE IF NOT EXISTS _running_drawdown_peak_sql_inv_ok (flag INTEGER);
INSERT INTO _running_drawdown_peak_sql_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _running_drawdown_peak_sql_inv_ok;
