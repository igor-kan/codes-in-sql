INSERT INTO dedup_latest_row_d57_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM dedup_latest_row_d57_runs
WHERE ok = 1;
