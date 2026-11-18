INSERT INTO pareto_abc_inventory_sql_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM pareto_abc_inventory_sql_runs
WHERE ok = 1;
