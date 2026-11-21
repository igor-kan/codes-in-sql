INSERT INTO dag_closure_cte_d56_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM dag_closure_cte_d56_runs
WHERE ok = 1;
