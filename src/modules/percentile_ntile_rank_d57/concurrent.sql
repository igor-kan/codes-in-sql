BEGIN IMMEDIATE;
INSERT INTO percentile_ntile_rank_d57_runs (ok, note) VALUES (1, 'tx_update');
UPDATE percentile_ntile_rank_d57_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
