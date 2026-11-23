CREATE INDEX IF NOT EXISTS idx_sparse_range_rollup_d58_runs_ok ON sparse_range_rollup_d58_runs(ok);
SELECT COUNT(*) AS run_count
FROM sparse_range_rollup_d58_runs
WHERE ok = 1;
