CREATE INDEX IF NOT EXISTS idx_dag_closure_cte_d56_runs_ok ON dag_closure_cte_d56_runs(ok);
SELECT COUNT(*) AS run_count
FROM dag_closure_cte_d56_runs
WHERE ok = 1;
