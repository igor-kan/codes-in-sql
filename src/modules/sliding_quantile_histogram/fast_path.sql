CREATE INDEX IF NOT EXISTS idx_sliding_quantile_histogram_runs_ok ON sliding_quantile_histogram_runs(ok);
SELECT COUNT(*) AS run_count
FROM sliding_quantile_histogram_runs
WHERE ok = 1;
