INSERT INTO gaps_islands_streak_d56_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM gaps_islands_streak_d56_runs
WHERE ok = 1;
