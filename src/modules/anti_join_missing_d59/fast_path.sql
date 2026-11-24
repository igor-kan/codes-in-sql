CREATE INDEX IF NOT EXISTS idx_anti_join_missing_d59_runs_ok ON anti_join_missing_d59_runs(ok);
SELECT COUNT(*) AS run_count
FROM anti_join_missing_d59_runs
WHERE ok = 1;
