BEGIN IMMEDIATE;
INSERT INTO cohort_retention_matrix_d56_runs (ok, note) VALUES (1, 'tx_update');
UPDATE cohort_retention_matrix_d56_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
