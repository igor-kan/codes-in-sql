BEGIN IMMEDIATE;
INSERT INTO loan_amortization_d61_runs (ok, note) VALUES (1, 'tx_update');
UPDATE loan_amortization_d61_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
