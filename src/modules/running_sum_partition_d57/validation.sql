INSERT INTO running_sum_partition_d57_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM running_sum_partition_d57_runs
WHERE ok = 1;
