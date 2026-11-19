INSERT INTO exponential_ewma_alpha_sql_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM exponential_ewma_alpha_sql_runs
WHERE ok = 1;
