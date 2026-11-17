INSERT INTO knapsack_dp_tabular_sql_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM knapsack_dp_tabular_sql_runs
WHERE ok = 1;
