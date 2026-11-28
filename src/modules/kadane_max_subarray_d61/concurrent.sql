BEGIN IMMEDIATE;
INSERT INTO kadane_max_subarray_d61_runs (ok, note) VALUES (1, 'tx_update');
UPDATE kadane_max_subarray_d61_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
