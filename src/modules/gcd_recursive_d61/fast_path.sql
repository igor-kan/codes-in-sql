CREATE INDEX IF NOT EXISTS idx_gcd_recursive_d61_runs_ok ON gcd_recursive_d61_runs(ok);
SELECT COUNT(*) AS run_count
FROM gcd_recursive_d61_runs
WHERE ok = 1;
