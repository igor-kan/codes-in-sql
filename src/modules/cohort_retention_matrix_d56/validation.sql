INSERT INTO cohort_retention_matrix_d56_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM cohort_retention_matrix_d56_runs
WHERE ok = 1;
