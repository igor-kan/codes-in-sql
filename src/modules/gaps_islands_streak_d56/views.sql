CREATE VIEW v_d56_streaks AS WITH g AS (SELECT day_num, day_num - ROW_NUMBER() OVER (ORDER BY day_num) AS grp
FROM d56_logins) SELECT grp, MIN(day_num) AS start_d, MAX(day_num) AS end_d, COUNT(*) AS len
FROM g GROUP BY grp;
INSERT OR IGNORE INTO gaps_islands_streak_d56_meta VALUES ('module', 'gaps_islands_streak_d56');
