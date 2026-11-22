BEGIN IMMEDIATE;
INSERT INTO running_sum_partition_d57_runs (ok, note) VALUES (1, 'tx_update');
UPDATE running_sum_partition_d57_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
