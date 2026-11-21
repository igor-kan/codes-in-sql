CREATE INDEX IF NOT EXISTS idx_session_timeout_split_d56_runs_ok ON session_timeout_split_d56_runs(ok);
SELECT COUNT(*) AS run_count
FROM session_timeout_split_d56_runs
WHERE ok = 1;
