CREATE TEMP TABLE _anti_join_missing_d59_prop(flag INTEGER);
CREATE TEMP TRIGGER _anti_join_missing_d59_prop_trg BEFORE INSERT ON _anti_join_missing_d59_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_d59_missing) + (SELECT COUNT(*) FROM d59_shipped) = (SELECT COUNT(*) FROM d59_manifest)) THEN RAISE(ABORT, 'property assertion failed for anti_join_missing_d59') END; END;
INSERT INTO _anti_join_missing_d59_prop VALUES (1);
