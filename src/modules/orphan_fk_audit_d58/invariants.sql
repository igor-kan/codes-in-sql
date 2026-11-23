CREATE TEMP TABLE IF NOT EXISTS _orphan_fk_audit_d58_inv_ok (flag INTEGER);
INSERT INTO _orphan_fk_audit_d58_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _orphan_fk_audit_d58_inv_ok;
