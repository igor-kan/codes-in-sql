BEGIN IMMEDIATE;
INSERT INTO hhi_concentration_d60_runs (ok, note) VALUES (1, 'tx_update');
UPDATE hhi_concentration_d60_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
