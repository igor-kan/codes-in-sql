CREATE TEMP TABLE _gcd_recursive_d61_prop(flag INTEGER);
CREATE TEMP TRIGGER _gcd_recursive_d61_prop_trg BEFORE INSERT ON _gcd_recursive_d61_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_d61_gcd_recursive v JOIN d61_gcd_pairs p ON p.pair_id = v.pair_id WHERE v.gcd_val < 0 OR (p.a > 0 AND (v.gcd_val = 0 OR p.a % v.gcd_val <> 0)) OR (p.b > 0 AND (v.gcd_val = 0 OR p.b % v.gcd_val <> 0))) = 0 AND (SELECT COUNT(*) FROM v_d61_gcd_recursive) = (SELECT COUNT(*) FROM d61_gcd_pairs)) THEN RAISE(ABORT, 'property assertion failed for gcd_recursive_d61') END; END;
INSERT INTO _gcd_recursive_d61_prop VALUES (1);
