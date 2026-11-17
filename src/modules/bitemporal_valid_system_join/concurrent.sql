BEGIN IMMEDIATE;
INSERT INTO bitemporal_valid_system_join_runs (ok, note) VALUES (1, 'tx_update');
UPDATE bitemporal_valid_system_join_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
