BEGIN IMMEDIATE;
INSERT INTO session_timeout_split_d56_runs (ok, note) VALUES (1, 'tx_update');
UPDATE session_timeout_split_d56_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
