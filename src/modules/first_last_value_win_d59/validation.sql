INSERT INTO first_last_value_win_d59_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM first_last_value_win_d59_runs
WHERE ok = 1;
