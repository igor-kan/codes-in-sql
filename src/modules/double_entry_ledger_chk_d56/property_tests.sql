CREATE TEMP TABLE _double_entry_ledger_chk_d56_prop(flag INTEGER);
CREATE TEMP TRIGGER _double_entry_ledger_chk_d56_prop_trg BEFORE INSERT ON _double_entry_ledger_chk_d56_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_d56_tx_balance WHERE net_delta = 0) = 1) THEN RAISE(ABORT, 'property assertion failed for double_entry_ledger_chk_d56') END; END;
INSERT INTO _double_entry_ledger_chk_d56_prop VALUES (1);
