CREATE INDEX IF NOT EXISTS idx_dedup_latest_row_d57_runs_ok ON dedup_latest_row_d57_runs(ok);
SELECT COUNT(*) AS run_count
FROM dedup_latest_row_d57_runs
WHERE ok = 1;
