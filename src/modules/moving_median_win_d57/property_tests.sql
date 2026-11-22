CREATE TEMP TABLE _moving_median_win_d57_prop(flag INTEGER);
CREATE TEMP TRIGGER _moving_median_win_d57_prop_trg BEFORE INSERT ON _moving_median_win_d57_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_d57_win WHERE price < wmin OR price > wmax) = 0) THEN RAISE(ABORT, 'property assertion failed for moving_median_win_d57') END; END;
INSERT INTO _moving_median_win_d57_prop VALUES (1);
