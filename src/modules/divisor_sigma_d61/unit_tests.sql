INSERT INTO d61_sigma_inputs VALUES (1,1),(2,12),(3,28);
CREATE TEMP TABLE _divisor_sigma_d61_chk(flag INTEGER);
CREATE TEMP TRIGGER _divisor_sigma_d61_chk_trg BEFORE INSERT ON _divisor_sigma_d61_chk
BEGIN SELECT CASE WHEN NOT ((SELECT sigma FROM v_d61_sigma_proper WHERE num_id=1) = 0 AND (SELECT sigma FROM v_d61_sigma_proper WHERE num_id=2) = 16 AND (SELECT sigma FROM v_d61_sigma_proper WHERE num_id=3) = 28) THEN RAISE(ABORT, 'unit assertion failed for divisor_sigma_d61') END; END;
INSERT INTO _divisor_sigma_d61_chk VALUES (1);
