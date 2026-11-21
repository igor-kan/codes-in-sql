INSERT INTO d56_ledger VALUES (101,'cash',-500),(101,'rev',500),(102,'ar',250),(102,'rev',250);
CREATE TEMP TABLE _double_entry_ledger_chk_d56_chk(flag INTEGER);
CREATE TEMP TRIGGER _double_entry_ledger_chk_d56_chk_trg BEFORE INSERT ON _double_entry_ledger_chk_d56_chk
BEGIN SELECT CASE WHEN NOT ((SELECT net_delta FROM v_d56_tx_balance WHERE tx_id=101) = 0 AND (SELECT net_delta FROM v_d56_tx_balance WHERE tx_id=102) = 500) THEN RAISE(ABORT, 'unit assertion failed for double_entry_ledger_chk_d56') END; END;
INSERT INTO _double_entry_ledger_chk_d56_chk VALUES (1);
