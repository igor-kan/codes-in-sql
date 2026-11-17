BEGIN IMMEDIATE;
INSERT INTO anomaly_iqr_tukey_fences_runs (ok, note) VALUES (1, 'tx_update');
UPDATE anomaly_iqr_tukey_fences_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
