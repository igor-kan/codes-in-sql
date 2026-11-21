INSERT INTO d56_scd2 VALUES (1,0,10,'free'),(1,10,99,'pro'),(2,0,50,'free');
CREATE TEMP TABLE _scd_type2_effective_d56_chk(flag INTEGER);
CREATE TEMP TRIGGER _scd_type2_effective_d56_chk_trg BEFORE INSERT ON _scd_type2_effective_d56_chk
BEGIN SELECT CASE WHEN NOT ((SELECT tier FROM d56_scd2 WHERE eid=1 AND 15 >= valid_from AND 15 < valid_to) = 'pro') THEN RAISE(ABORT, 'unit assertion failed for scd_type2_effective_d56') END; END;
INSERT INTO _scd_type2_effective_d56_chk VALUES (1);
