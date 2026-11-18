BEGIN IMMEDIATE;
INSERT INTO funnel_conversion_dropoff_runs (ok, note) VALUES (1, 'tx_update');
UPDATE funnel_conversion_dropoff_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
