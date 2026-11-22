BEGIN IMMEDIATE;
INSERT INTO dedup_latest_row_d57_runs (ok, note) VALUES (1, 'tx_update');
UPDATE dedup_latest_row_d57_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
