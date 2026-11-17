INSERT INTO bitemporal_valid_system_join_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM bitemporal_valid_system_join_runs
WHERE ok = 1;
