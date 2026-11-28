CREATE INDEX IF NOT EXISTS idx_loan_amortization_d61_runs_ok ON loan_amortization_d61_runs(ok);
SELECT COUNT(*) AS run_count
FROM loan_amortization_d61_runs
WHERE ok = 1;
