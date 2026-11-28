INSERT INTO d61_gcd_pairs VALUES (1,48,18),(2,1071,462),(3,17,0);
CREATE TEMP TABLE _gcd_recursive_d61_chk(flag INTEGER);
CREATE TEMP TRIGGER _gcd_recursive_d61_chk_trg BEFORE INSERT ON _gcd_recursive_d61_chk
BEGIN SELECT CASE WHEN NOT ((SELECT gcd_val FROM v_d61_gcd_recursive WHERE pair_id=1) = 6 AND (SELECT gcd_val FROM v_d61_gcd_recursive WHERE pair_id=2) = 21 AND (SELECT gcd_val FROM v_d61_gcd_recursive WHERE pair_id=3) = 17) THEN RAISE(ABORT, 'unit assertion failed for gcd_recursive_d61') END; END;
INSERT INTO _gcd_recursive_d61_chk VALUES (1);
