INSERT INTO rolling_7d_window_avg_d56_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM rolling_7d_window_avg_d56_runs
WHERE ok = 1;
