BEGIN IMMEDIATE;
INSERT INTO apriori_pair_lift_confidence_runs (ok, note) VALUES (1, 'tx_update');
UPDATE apriori_pair_lift_confidence_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
