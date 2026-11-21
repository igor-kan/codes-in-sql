CREATE TEMP TABLE _scd_type2_effective_d56_prop(flag INTEGER);
CREATE TEMP TRIGGER _scd_type2_effective_d56_prop_trg BEFORE INSERT ON _scd_type2_effective_d56_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM d56_scd2 a JOIN d56_scd2 b ON a.eid=b.eid AND a.valid_from < b.valid_to AND b.valid_from < a.valid_to AND a.valid_from <> b.valid_from) = 0) THEN RAISE(ABORT, 'property assertion failed for scd_type2_effective_d56') END; END;
INSERT INTO _scd_type2_effective_d56_prop VALUES (1);
