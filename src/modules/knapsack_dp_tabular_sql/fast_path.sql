CREATE INDEX IF NOT EXISTS idx_knapsack_dp_tabular_sql_runs_ok ON knapsack_dp_tabular_sql_runs(ok);
SELECT COUNT(*) AS run_count
FROM knapsack_dp_tabular_sql_runs
WHERE ok = 1;
