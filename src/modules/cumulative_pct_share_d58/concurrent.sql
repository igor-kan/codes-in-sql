BEGIN IMMEDIATE;
INSERT INTO cumulative_pct_share_d58_runs (ok, note) VALUES (1, 'tx_update');
UPDATE cumulative_pct_share_d58_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
