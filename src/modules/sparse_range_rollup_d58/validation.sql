INSERT INTO sparse_range_rollup_d58_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM sparse_range_rollup_d58_runs
WHERE ok = 1;
