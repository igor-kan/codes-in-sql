INSERT INTO d56_ts_metric VALUES (1, 10.0), (2, 20.0), (3, 30.0), (4, 60.0);
CREATE TEMP TABLE _rolling_7d_window_avg_d56_chk(flag INTEGER);
CREATE TEMP TRIGGER _rolling_7d_window_avg_d56_chk_trg BEFORE INSERT ON _rolling_7d_window_avg_d56_chk
BEGIN SELECT CASE WHEN NOT ((SELECT ROUND(ma3, 4) FROM v_d56_mavg WHERE day_seq=3) = 20.0 AND (SELECT ROUND(ma3, 4) FROM v_d56_mavg WHERE day_seq=4) = 36.6667) THEN RAISE(ABORT, 'unit assertion failed for rolling_7d_window_avg_d56') END; END;
INSERT INTO _rolling_7d_window_avg_d56_chk VALUES (1);
