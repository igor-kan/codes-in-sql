BEGIN IMMEDIATE;
INSERT INTO percentile_hist_bin_d59_runs (ok, note) VALUES (1, 'tx_update');
UPDATE percentile_hist_bin_d59_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
