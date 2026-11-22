BEGIN IMMEDIATE;
INSERT INTO moving_median_win_d57_runs (ok, note) VALUES (1, 'tx_update');
UPDATE moving_median_win_d57_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
