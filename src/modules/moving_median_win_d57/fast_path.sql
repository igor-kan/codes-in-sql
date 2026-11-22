CREATE INDEX IF NOT EXISTS idx_moving_median_win_d57_runs_ok ON moving_median_win_d57_runs(ok);
SELECT COUNT(*) AS run_count
FROM moving_median_win_d57_runs
WHERE ok = 1;
