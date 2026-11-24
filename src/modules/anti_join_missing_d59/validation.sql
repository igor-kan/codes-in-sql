INSERT INTO anti_join_missing_d59_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM anti_join_missing_d59_runs
WHERE ok = 1;
