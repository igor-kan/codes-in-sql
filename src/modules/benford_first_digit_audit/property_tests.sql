CREATE TEMP TABLE _benford_first_digit_audit_prop(flag INTEGER);
CREATE TEMP TRIGGER _benford_first_digit_audit_prop_trg BEFORE INSERT ON _benford_first_digit_audit_prop
BEGIN SELECT CASE WHEN NOT ((SELECT SUM(obs_cnt) FROM v_benford) = 10) THEN RAISE(ABORT, 'property assertion failed for benford_first_digit_audit') END; END;
INSERT INTO _benford_first_digit_audit_prop VALUES (1);
