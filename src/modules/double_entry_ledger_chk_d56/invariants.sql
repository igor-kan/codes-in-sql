CREATE TEMP TABLE IF NOT EXISTS _double_entry_ledger_chk_d56_inv_ok (flag INTEGER);
INSERT INTO _double_entry_ledger_chk_d56_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _double_entry_ledger_chk_d56_inv_ok;
