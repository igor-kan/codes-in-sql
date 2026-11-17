CREATE INDEX IF NOT EXISTS idx_bitemporal_valid_system_join_runs_ok ON bitemporal_valid_system_join_runs(ok);
SELECT COUNT(*) AS run_count
FROM bitemporal_valid_system_join_runs
WHERE ok = 1;
