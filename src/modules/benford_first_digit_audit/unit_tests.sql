INSERT INTO ledger_entries VALUES (1,120),(2,185),(3,199),(4,240),(5,290),(6,310),(7,450),(8,520),(9,890),(10,145);
CREATE TEMP TABLE _benford_first_digit_audit_chk(flag INTEGER);
CREATE TEMP TRIGGER _benford_first_digit_audit_chk_trg BEFORE INSERT ON _benford_first_digit_audit_chk
BEGIN SELECT CASE WHEN NOT ((SELECT obs_cnt FROM v_benford WHERE digit=1) = 4 AND (SELECT obs_prob FROM v_benford WHERE digit=1) = 0.4) THEN RAISE(ABORT, 'unit assertion failed for benford_first_digit_audit') END; END;
INSERT INTO _benford_first_digit_audit_chk VALUES (1);
