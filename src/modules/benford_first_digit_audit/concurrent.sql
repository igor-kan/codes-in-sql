BEGIN IMMEDIATE;
INSERT INTO benford_first_digit_audit_runs (ok, note) VALUES (1, 'tx_update');
UPDATE benford_first_digit_audit_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
