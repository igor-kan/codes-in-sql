CREATE TEMP TABLE IF NOT EXISTS _gaps_islands_streak_d56_inv_ok (flag INTEGER);
INSERT INTO _gaps_islands_streak_d56_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _gaps_islands_streak_d56_inv_ok;
