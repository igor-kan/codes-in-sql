BEGIN IMMEDIATE;
INSERT INTO cohort_churn_survival_runs (ok, note) VALUES (1, 'tx_update');
UPDATE cohort_churn_survival_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
