BEGIN IMMEDIATE;
INSERT INTO sparse_range_rollup_d58_runs (ok, note) VALUES (1, 'tx_update');
UPDATE sparse_range_rollup_d58_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
