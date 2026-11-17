BEGIN IMMEDIATE;
INSERT INTO dedup_survivorship_merge_runs (ok, note) VALUES (1, 'tx_update');
UPDATE dedup_survivorship_merge_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
