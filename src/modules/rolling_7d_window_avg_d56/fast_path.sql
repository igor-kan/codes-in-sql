CREATE INDEX IF NOT EXISTS idx_rolling_7d_window_avg_d56_runs_ok ON rolling_7d_window_avg_d56_runs(ok);
SELECT COUNT(*) AS run_count
FROM rolling_7d_window_avg_d56_runs
WHERE ok = 1;
