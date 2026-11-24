BEGIN IMMEDIATE;
INSERT INTO anti_join_missing_d59_runs (ok, note) VALUES (1, 'tx_update');
UPDATE anti_join_missing_d59_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
