BEGIN IMMEDIATE;
INSERT INTO knapsack_dp_tabular_sql_runs (ok, note) VALUES (1, 'tx_update');
UPDATE knapsack_dp_tabular_sql_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
