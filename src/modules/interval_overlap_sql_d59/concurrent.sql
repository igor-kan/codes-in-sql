BEGIN IMMEDIATE;
INSERT INTO interval_overlap_sql_d59_runs (ok, note) VALUES (1, 'tx_update');
UPDATE interval_overlap_sql_d59_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
