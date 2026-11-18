CREATE INDEX IF NOT EXISTS idx_pareto_abc_inventory_sql_runs_ok ON pareto_abc_inventory_sql_runs(ok);
SELECT COUNT(*) AS run_count
FROM pareto_abc_inventory_sql_runs
WHERE ok = 1;
