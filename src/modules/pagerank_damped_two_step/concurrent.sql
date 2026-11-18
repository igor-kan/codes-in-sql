BEGIN IMMEDIATE;
INSERT INTO pagerank_damped_two_step_runs (ok, note) VALUES (1, 'tx_update');
UPDATE pagerank_damped_two_step_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
