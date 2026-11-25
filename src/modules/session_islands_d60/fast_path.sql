CREATE INDEX IF NOT EXISTS idx_session_islands_d60_runs_ok ON session_islands_d60_runs(ok);
SELECT COUNT(*) AS run_count
FROM session_islands_d60_runs
WHERE ok = 1;
