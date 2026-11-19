CREATE INDEX IF NOT EXISTS idx_median_abs_deviation_sql_runs_ok ON median_abs_deviation_sql_runs(ok);
SELECT COUNT(*) AS run_count
FROM median_abs_deviation_sql_runs
WHERE ok = 1;
