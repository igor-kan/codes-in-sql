INSERT INTO session_timeout_split_d56_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM session_timeout_split_d56_runs
WHERE ok = 1;
