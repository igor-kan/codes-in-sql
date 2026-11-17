BEGIN IMMEDIATE;
INSERT INTO sliding_quantile_histogram_runs (ok, note) VALUES (1, 'tx_update');
UPDATE sliding_quantile_histogram_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
