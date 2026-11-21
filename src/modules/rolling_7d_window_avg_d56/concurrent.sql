BEGIN IMMEDIATE;
INSERT INTO rolling_7d_window_avg_d56_runs (ok, note) VALUES (1, 'tx_update');
UPDATE rolling_7d_window_avg_d56_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
