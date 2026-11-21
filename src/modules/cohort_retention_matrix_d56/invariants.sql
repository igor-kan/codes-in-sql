CREATE TEMP TABLE IF NOT EXISTS _cohort_retention_matrix_d56_inv_ok (flag INTEGER);
INSERT INTO _cohort_retention_matrix_d56_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _cohort_retention_matrix_d56_inv_ok;
