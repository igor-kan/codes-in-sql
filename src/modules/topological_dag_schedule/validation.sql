INSERT INTO topological_dag_schedule_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM topological_dag_schedule_runs
WHERE ok = 1;
