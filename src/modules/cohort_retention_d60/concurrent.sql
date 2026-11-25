BEGIN IMMEDIATE;
INSERT INTO cohort_retention_d60_runs (ok, note) VALUES (1, 'tx_update');
UPDATE cohort_retention_d60_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
