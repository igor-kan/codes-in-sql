INSERT INTO moving_median_win_d57_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM moving_median_win_d57_runs
WHERE ok = 1;
