BEGIN IMMEDIATE;
INSERT INTO dag_closure_cte_d56_runs (ok, note) VALUES (1, 'tx_update');
UPDATE dag_closure_cte_d56_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
