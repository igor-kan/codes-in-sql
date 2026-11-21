BEGIN IMMEDIATE;
INSERT INTO scd_type2_effective_d56_runs (ok, note) VALUES (1, 'tx_update');
UPDATE scd_type2_effective_d56_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
