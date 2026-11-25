BEGIN IMMEDIATE;
INSERT INTO rolling_vwap_d60_runs (ok, note) VALUES (1, 'tx_update');
UPDATE rolling_vwap_d60_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
