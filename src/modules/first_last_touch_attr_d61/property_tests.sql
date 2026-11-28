CREATE TEMP TABLE _first_last_touch_attr_d61_prop(flag INTEGER);
CREATE TEMP TRIGGER _first_last_touch_attr_d61_prop_trg BEFORE INSERT ON _first_last_touch_attr_d61_prop
BEGIN SELECT CASE WHEN NOT ((SELECT SUM(first_credit) FROM v_d61_attribution) = (SELECT COUNT(*) FROM d61_conv) AND (SELECT SUM(last_credit) FROM v_d61_attribution) = (SELECT COUNT(*) FROM d61_conv)) THEN RAISE(ABORT, 'property assertion failed for first_last_touch_attr_d61') END; END;
INSERT INTO _first_last_touch_attr_d61_prop VALUES (1);
