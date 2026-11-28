CREATE TEMP TABLE _loan_amortization_d61_prop(flag INTEGER);
CREATE TEMP TRIGGER _loan_amortization_d61_prop_trg BEFORE INSERT ON _loan_amortization_d61_prop
BEGIN SELECT CASE WHEN NOT ((SELECT MIN(balance >= 0) FROM v_d61_amort_schedule WHERE loan_id=1) = 1 AND (SELECT COUNT(*) FROM v_d61_amort_schedule WHERE loan_id=1) = 12) THEN RAISE(ABORT, 'property assertion failed for loan_amortization_d61') END; END;
INSERT INTO _loan_amortization_d61_prop VALUES (1);
