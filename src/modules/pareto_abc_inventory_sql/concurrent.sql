BEGIN IMMEDIATE;
INSERT INTO pareto_abc_inventory_sql_runs (ok, note) VALUES (1, 'tx_update');
UPDATE pareto_abc_inventory_sql_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
