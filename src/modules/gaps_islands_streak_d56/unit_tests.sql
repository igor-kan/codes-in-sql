INSERT INTO d56_logins VALUES (1),(2),(3),(7),(8),(12);
CREATE TEMP TABLE _gaps_islands_streak_d56_chk(flag INTEGER);
CREATE TEMP TRIGGER _gaps_islands_streak_d56_chk_trg BEFORE INSERT ON _gaps_islands_streak_d56_chk
BEGIN SELECT CASE WHEN NOT ((SELECT MAX(len) FROM v_d56_streaks) = 3 AND (SELECT COUNT(*) FROM v_d56_streaks) = 3) THEN RAISE(ABORT, 'unit assertion failed for gaps_islands_streak_d56') END; END;
INSERT INTO _gaps_islands_streak_d56_chk VALUES (1);
