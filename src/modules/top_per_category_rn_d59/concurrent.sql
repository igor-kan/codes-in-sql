BEGIN IMMEDIATE;
INSERT INTO top_per_category_rn_d59_runs (ok, note) VALUES (1, 'tx_update');
UPDATE top_per_category_rn_d59_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
