BEGIN IMMEDIATE;
INSERT INTO adjacency_transitive_reach_runs (ok, note) VALUES (1, 'tx_update');
UPDATE adjacency_transitive_reach_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
