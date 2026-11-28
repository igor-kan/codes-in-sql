BEGIN IMMEDIATE;
INSERT INTO next_greater_element_d61_runs (ok, note) VALUES (1, 'tx_update');
UPDATE next_greater_element_d61_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
