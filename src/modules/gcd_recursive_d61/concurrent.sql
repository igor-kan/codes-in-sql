BEGIN IMMEDIATE;
INSERT INTO gcd_recursive_d61_runs (ok, note) VALUES (1, 'tx_update');
UPDATE gcd_recursive_d61_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
