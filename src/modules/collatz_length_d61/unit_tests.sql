INSERT INTO d61_collatz_seeds VALUES (1,1),(2,6),(3,27);
CREATE TEMP TABLE _collatz_length_d61_chk(flag INTEGER);
CREATE TEMP TRIGGER _collatz_length_d61_chk_trg BEFORE INSERT ON _collatz_length_d61_chk
BEGIN SELECT CASE WHEN NOT ((SELECT total_steps FROM v_d61_collatz_steps WHERE seed_id=1) = 0 AND (SELECT total_steps FROM v_d61_collatz_steps WHERE seed_id=2) = 8 AND (SELECT total_steps FROM v_d61_collatz_steps WHERE seed_id=3) = 111) THEN RAISE(ABORT, 'unit assertion failed for collatz_length_d61') END; END;
INSERT INTO _collatz_length_d61_chk VALUES (1);
