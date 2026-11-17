CREATE INDEX IF NOT EXISTS idx_dedup_survivorship_merge_runs_ok ON dedup_survivorship_merge_runs(ok);
SELECT COUNT(*) AS run_count
FROM dedup_survivorship_merge_runs
WHERE ok = 1;
