CREATE INDEX IF NOT EXISTS idx_divisor_sigma_d61_runs_ok ON divisor_sigma_d61_runs(ok);
SELECT COUNT(*) AS run_count
FROM divisor_sigma_d61_runs
WHERE ok = 1;
