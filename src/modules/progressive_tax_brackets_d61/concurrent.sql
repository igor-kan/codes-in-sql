BEGIN IMMEDIATE;
INSERT INTO progressive_tax_brackets_d61_runs (ok, note) VALUES (1, 'tx_update');
UPDATE progressive_tax_brackets_d61_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
