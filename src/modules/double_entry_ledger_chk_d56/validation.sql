INSERT INTO double_entry_ledger_chk_d56_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM double_entry_ledger_chk_d56_runs
WHERE ok = 1;
