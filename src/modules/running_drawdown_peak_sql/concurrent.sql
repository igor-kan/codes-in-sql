BEGIN IMMEDIATE;
INSERT INTO running_drawdown_peak_sql_runs (ok, note) VALUES (1, 'tx_update');
UPDATE running_drawdown_peak_sql_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
