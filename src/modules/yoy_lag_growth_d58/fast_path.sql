CREATE INDEX IF NOT EXISTS idx_yoy_lag_growth_d58_runs_ok ON yoy_lag_growth_d58_runs(ok);
SELECT COUNT(*) AS run_count
FROM yoy_lag_growth_d58_runs
WHERE ok = 1;
