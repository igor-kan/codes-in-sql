BEGIN IMMEDIATE;
INSERT INTO exponential_ewma_alpha_sql_runs (ok, note) VALUES (1, 'tx_update');
UPDATE exponential_ewma_alpha_sql_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
