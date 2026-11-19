BEGIN IMMEDIATE;
INSERT INTO median_abs_deviation_sql_runs (ok, note) VALUES (1, 'tx_update');
UPDATE median_abs_deviation_sql_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
