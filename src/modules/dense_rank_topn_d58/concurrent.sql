BEGIN IMMEDIATE;
INSERT INTO dense_rank_topn_d58_runs (ok, note) VALUES (1, 'tx_update');
UPDATE dense_rank_topn_d58_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
