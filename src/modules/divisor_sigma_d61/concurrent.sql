BEGIN IMMEDIATE;
INSERT INTO divisor_sigma_d61_runs (ok, note) VALUES (1, 'tx_update');
UPDATE divisor_sigma_d61_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
