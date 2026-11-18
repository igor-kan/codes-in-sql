CREATE TEMP TABLE _apriori_pair_lift_confidence_prop(flag INTEGER);
CREATE TEMP TRIGGER _apriori_pair_lift_confidence_prop_trg BEFORE INSERT ON _apriori_pair_lift_confidence_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_pair_lift) >= 2) THEN RAISE(ABORT, 'property assertion failed for apriori_pair_lift_confidence') END; END;
INSERT INTO _apriori_pair_lift_confidence_prop VALUES (1);
