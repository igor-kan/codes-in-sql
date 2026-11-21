CREATE INDEX IF NOT EXISTS idx_cohort_retention_matrix_d56_runs_ok ON cohort_retention_matrix_d56_runs(ok);
SELECT COUNT(*) AS run_count
FROM cohort_retention_matrix_d56_runs
WHERE ok = 1;
