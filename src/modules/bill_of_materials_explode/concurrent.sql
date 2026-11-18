BEGIN IMMEDIATE;
INSERT INTO bill_of_materials_explode_runs (ok, note) VALUES (1, 'tx_update');
UPDATE bill_of_materials_explode_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
