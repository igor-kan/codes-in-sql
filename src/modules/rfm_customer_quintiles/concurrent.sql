BEGIN IMMEDIATE;
INSERT INTO rfm_customer_quintiles_runs (ok, note) VALUES (1, 'tx_update');
UPDATE rfm_customer_quintiles_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
