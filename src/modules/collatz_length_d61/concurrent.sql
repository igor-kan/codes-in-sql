BEGIN IMMEDIATE;
INSERT INTO collatz_length_d61_runs (ok, note) VALUES (1, 'tx_update');
UPDATE collatz_length_d61_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
