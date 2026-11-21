CREATE TEMP TABLE _gaps_islands_streak_d56_prop(flag INTEGER);
CREATE TEMP TRIGGER _gaps_islands_streak_d56_prop_trg BEFORE INSERT ON _gaps_islands_streak_d56_prop
BEGIN SELECT CASE WHEN NOT ((SELECT SUM(len) FROM v_d56_streaks) = (SELECT COUNT(*) FROM d56_logins)) THEN RAISE(ABORT, 'property assertion failed for gaps_islands_streak_d56') END; END;
INSERT INTO _gaps_islands_streak_d56_prop VALUES (1);
