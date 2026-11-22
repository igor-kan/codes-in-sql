CREATE INDEX IF NOT EXISTS idx_running_sum_partition_d57_runs_ok ON running_sum_partition_d57_runs(ok);
SELECT COUNT(*) AS run_count
FROM running_sum_partition_d57_runs
WHERE ok = 1;
