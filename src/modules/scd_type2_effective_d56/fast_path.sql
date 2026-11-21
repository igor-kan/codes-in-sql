CREATE INDEX IF NOT EXISTS idx_scd_type2_effective_d56_runs_ok ON scd_type2_effective_d56_runs(ok);
SELECT COUNT(*) AS run_count
FROM scd_type2_effective_d56_runs
WHERE ok = 1;
