BEGIN IMMEDIATE;
INSERT INTO moving_sum_budget_d59_runs (ok, note) VALUES (1, 'tx_update');
UPDATE moving_sum_budget_d59_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
