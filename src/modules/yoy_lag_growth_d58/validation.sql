INSERT INTO yoy_lag_growth_d58_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM yoy_lag_growth_d58_runs
WHERE ok = 1;
