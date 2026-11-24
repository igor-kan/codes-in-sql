CREATE INDEX IF NOT EXISTS idx_moving_sum_budget_d59_runs_ok ON moving_sum_budget_d59_runs(ok);
SELECT COUNT(*) AS run_count
FROM moving_sum_budget_d59_runs
WHERE ok = 1;
