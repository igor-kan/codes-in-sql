CREATE INDEX IF NOT EXISTS idx_double_entry_ledger_chk_d56_runs_ok ON double_entry_ledger_chk_d56_runs(ok);
SELECT COUNT(*) AS run_count
FROM double_entry_ledger_chk_d56_runs
WHERE ok = 1;
