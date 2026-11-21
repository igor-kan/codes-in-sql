BEGIN IMMEDIATE;
INSERT INTO double_entry_ledger_chk_d56_runs (ok, note) VALUES (1, 'tx_update');
UPDATE double_entry_ledger_chk_d56_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
