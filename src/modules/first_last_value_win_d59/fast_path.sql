CREATE INDEX IF NOT EXISTS idx_first_last_value_win_d59_runs_ok ON first_last_value_win_d59_runs(ok);
SELECT COUNT(*) AS run_count
FROM first_last_value_win_d59_runs
WHERE ok = 1;
