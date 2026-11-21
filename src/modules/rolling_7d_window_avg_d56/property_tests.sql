CREATE TEMP TABLE _rolling_7d_window_avg_d56_prop(flag INTEGER);
CREATE TEMP TRIGGER _rolling_7d_window_avg_d56_prop_trg BEFORE INSERT ON _rolling_7d_window_avg_d56_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_d56_mavg WHERE ma3 > 0) = 4) THEN RAISE(ABORT, 'property assertion failed for rolling_7d_window_avg_d56') END; END;
INSERT INTO _rolling_7d_window_avg_d56_prop VALUES (1);
