CREATE TEMP TABLE _collatz_length_d61_prop(flag INTEGER);
CREATE TEMP TRIGGER _collatz_length_d61_prop_trg BEFORE INSERT ON _collatz_length_d61_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_d61_collatz_steps v JOIN d61_collatz_seeds s ON s.seed_id = v.seed_id WHERE v.total_steps < 0 OR (s.n = 1 AND v.total_steps <> 0) OR (s.n > 1 AND v.total_steps < 1)) = 0 AND (SELECT COUNT(*) FROM v_d61_collatz_steps) = (SELECT COUNT(*) FROM d61_collatz_seeds)) THEN RAISE(ABORT, 'property assertion failed for collatz_length_d61') END; END;
INSERT INTO _collatz_length_d61_prop VALUES (1);
