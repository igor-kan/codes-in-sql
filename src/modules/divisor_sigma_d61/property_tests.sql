CREATE TEMP TABLE _divisor_sigma_d61_prop(flag INTEGER);
CREATE TEMP TRIGGER _divisor_sigma_d61_prop_trg BEFORE INSERT ON _divisor_sigma_d61_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_d61_sigma_proper v JOIN d61_sigma_inputs i ON i.num_id = v.num_id WHERE v.sigma < 0 OR v.sigma > (i.n * (i.n - 1)) / 2 OR (i.n >= 2 AND v.sigma < 1) OR (i.n = 1 AND v.sigma <> 0)) = 0) THEN RAISE(ABORT, 'property assertion failed for divisor_sigma_d61') END; END;
INSERT INTO _divisor_sigma_d61_prop VALUES (1);
