CREATE INDEX IF NOT EXISTS idx_kadane_max_subarray_d61_runs_ok ON kadane_max_subarray_d61_runs(ok);
SELECT COUNT(*) AS run_count
FROM kadane_max_subarray_d61_runs
WHERE ok = 1;
