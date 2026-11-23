BEGIN IMMEDIATE;
INSERT INTO orphan_fk_audit_d58_runs (ok, note) VALUES (1, 'tx_update');
UPDATE orphan_fk_audit_d58_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
