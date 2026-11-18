CREATE INDEX IF NOT EXISTS idx_benford_first_digit_audit_runs_ok ON benford_first_digit_audit_runs(ok);
SELECT COUNT(*) AS run_count
FROM benford_first_digit_audit_runs
WHERE ok = 1;
