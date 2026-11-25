BEGIN IMMEDIATE;
INSERT INTO session_islands_d60_runs (ok, note) VALUES (1, 'tx_update');
UPDATE session_islands_d60_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
