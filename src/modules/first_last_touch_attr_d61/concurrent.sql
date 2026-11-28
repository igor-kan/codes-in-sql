BEGIN IMMEDIATE;
INSERT INTO first_last_touch_attr_d61_runs (ok, note) VALUES (1, 'tx_update');
UPDATE first_last_touch_attr_d61_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
