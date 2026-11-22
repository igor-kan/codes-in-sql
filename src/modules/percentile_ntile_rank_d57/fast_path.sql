CREATE INDEX IF NOT EXISTS idx_percentile_ntile_rank_d57_runs_ok ON percentile_ntile_rank_d57_runs(ok);
SELECT COUNT(*) AS run_count
FROM percentile_ntile_rank_d57_runs
WHERE ok = 1;
