INSERT INTO orphan_fk_audit_d58_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM orphan_fk_audit_d58_runs
WHERE ok = 1;
