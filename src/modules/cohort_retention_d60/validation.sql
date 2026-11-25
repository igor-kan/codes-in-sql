INSERT INTO cohort_retention_d60_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM cohort_retention_d60_runs
WHERE ok = 1;
