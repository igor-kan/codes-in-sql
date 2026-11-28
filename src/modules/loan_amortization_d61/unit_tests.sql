INSERT INTO d61_loan VALUES (1, 1200, 0, 12, 100);
CREATE TEMP TABLE _loan_amortization_d61_chk(flag INTEGER);
CREATE TEMP TRIGGER _loan_amortization_d61_chk_trg BEFORE INSERT ON _loan_amortization_d61_chk
BEGIN SELECT CASE WHEN NOT ((SELECT balance FROM v_d61_amort_schedule WHERE loan_id=1 AND month=(SELECT MAX(month) FROM v_d61_amort_schedule WHERE loan_id=1)) = 0 AND (SELECT SUM(principal_paid) FROM v_d61_amort_schedule WHERE loan_id=1) = 1200) THEN RAISE(ABORT, 'unit assertion failed for loan_amortization_d61') END; END;
INSERT INTO _loan_amortization_d61_chk VALUES (1);
