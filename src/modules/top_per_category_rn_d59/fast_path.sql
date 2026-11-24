CREATE INDEX IF NOT EXISTS idx_top_per_category_rn_d59_runs_ok ON top_per_category_rn_d59_runs(ok);
SELECT COUNT(*) AS run_count
FROM top_per_category_rn_d59_runs
WHERE ok = 1;
