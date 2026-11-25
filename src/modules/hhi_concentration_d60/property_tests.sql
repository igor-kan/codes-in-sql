CREATE TEMP TABLE _hhi_concentration_d60_prop(flag INTEGER);
CREATE TEMP TRIGGER _hhi_concentration_d60_prop_trg BEFORE INSERT ON _hhi_concentration_d60_prop
BEGIN SELECT CASE WHEN NOT ((SELECT MIN(hhi > 0.0 AND hhi <= 10000.0) FROM v_d60_hhi) = 1) THEN RAISE(ABORT, 'property assertion failed for hhi_concentration_d60') END; END;
INSERT INTO _hhi_concentration_d60_prop VALUES (1);
