INSERT INTO dedup_survivorship_merge_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM dedup_survivorship_merge_runs
WHERE ok = 1;
