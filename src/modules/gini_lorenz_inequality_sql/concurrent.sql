BEGIN IMMEDIATE;
INSERT INTO gini_lorenz_inequality_sql_runs (ok, note) VALUES (1, 'tx_update');
UPDATE gini_lorenz_inequality_sql_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
