INSERT INTO interval_overlap_sql_d59_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM interval_overlap_sql_d59_runs
WHERE ok = 1;
