CREATE INDEX IF NOT EXISTS idx_percentile_hist_bin_d59_runs_ok ON percentile_hist_bin_d59_runs(ok);
SELECT COUNT(*) AS run_count
FROM percentile_hist_bin_d59_runs
WHERE ok = 1;
