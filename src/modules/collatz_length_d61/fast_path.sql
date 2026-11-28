CREATE INDEX IF NOT EXISTS idx_collatz_length_d61_runs_ok ON collatz_length_d61_runs(ok);
SELECT COUNT(*) AS run_count
FROM collatz_length_d61_runs
WHERE ok = 1;
