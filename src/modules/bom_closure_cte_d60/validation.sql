INSERT INTO bom_closure_cte_d60_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM bom_closure_cte_d60_runs
WHERE ok = 1;
