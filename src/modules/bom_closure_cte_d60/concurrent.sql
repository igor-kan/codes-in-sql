BEGIN IMMEDIATE;
INSERT INTO bom_closure_cte_d60_runs (ok, note) VALUES (1, 'tx_update');
UPDATE bom_closure_cte_d60_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
