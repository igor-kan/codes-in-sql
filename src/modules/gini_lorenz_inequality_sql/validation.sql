INSERT INTO gini_lorenz_inequality_sql_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM gini_lorenz_inequality_sql_runs
WHERE ok = 1;
