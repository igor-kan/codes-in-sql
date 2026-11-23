BEGIN IMMEDIATE;
INSERT INTO yoy_lag_growth_d58_runs (ok, note) VALUES (1, 'tx_update');
UPDATE yoy_lag_growth_d58_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
