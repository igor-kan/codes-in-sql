CREATE INDEX IF NOT EXISTS idx_cumulative_pct_share_d58_runs_ok ON cumulative_pct_share_d58_runs(ok);
SELECT COUNT(*) AS run_count
FROM cumulative_pct_share_d58_runs
WHERE ok = 1;
