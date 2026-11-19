INSERT INTO running_drawdown_peak_sql_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM running_drawdown_peak_sql_runs
WHERE ok = 1;
