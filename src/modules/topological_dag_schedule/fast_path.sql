CREATE INDEX IF NOT EXISTS idx_topological_dag_schedule_runs_ok ON topological_dag_schedule_runs(ok);
SELECT COUNT(*) AS run_count
FROM topological_dag_schedule_runs
WHERE ok = 1;
