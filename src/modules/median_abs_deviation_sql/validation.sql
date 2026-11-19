INSERT INTO median_abs_deviation_sql_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM median_abs_deviation_sql_runs
WHERE ok = 1;
