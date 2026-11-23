CREATE TEMP TABLE _yoy_lag_growth_d58_prop(flag INTEGER);
CREATE TEMP TRIGGER _yoy_lag_growth_d58_prop_trg BEFORE INSERT ON _yoy_lag_growth_d58_prop
BEGIN SELECT CASE WHEN NOT ((SELECT SUM(delta_rev) FROM v_d58_growth) = 85) THEN RAISE(ABORT, 'property assertion failed for yoy_lag_growth_d58') END; END;
INSERT INTO _yoy_lag_growth_d58_prop VALUES (1);
