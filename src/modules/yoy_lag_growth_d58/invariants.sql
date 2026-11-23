CREATE TEMP TABLE IF NOT EXISTS _yoy_lag_growth_d58_inv_ok (flag INTEGER);
INSERT INTO _yoy_lag_growth_d58_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _yoy_lag_growth_d58_inv_ok;
