CREATE INDEX IF NOT EXISTS idx_interval_overlap_sql_d59_runs_ok ON interval_overlap_sql_d59_runs(ok);
SELECT COUNT(*) AS run_count
FROM interval_overlap_sql_d59_runs
WHERE ok = 1;
