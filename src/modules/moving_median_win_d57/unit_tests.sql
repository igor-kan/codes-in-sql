INSERT INTO d57_ticks VALUES (1,10),(2,30),(3,20),(4,50);
CREATE TEMP TABLE _moving_median_win_d57_chk(flag INTEGER);
CREATE TEMP TRIGGER _moving_median_win_d57_chk_trg BEFORE INSERT ON _moving_median_win_d57_chk
BEGIN SELECT CASE WHEN NOT ((SELECT wmin FROM v_d57_win WHERE t=2) = 10 AND (SELECT wmax FROM v_d57_win WHERE t=2) = 30) THEN RAISE(ABORT, 'unit assertion failed for moving_median_win_d57') END; END;
INSERT INTO _moving_median_win_d57_chk VALUES (1);
