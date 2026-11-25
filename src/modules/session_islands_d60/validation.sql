INSERT INTO session_islands_d60_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM session_islands_d60_runs
WHERE ok = 1;
