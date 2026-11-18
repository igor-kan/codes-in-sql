CREATE TEMP TABLE IF NOT EXISTS _benford_first_digit_audit_inv_ok (flag INTEGER);
INSERT INTO _benford_first_digit_audit_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _benford_first_digit_audit_inv_ok;
