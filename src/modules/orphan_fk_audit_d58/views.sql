CREATE VIEW v_d58_orphans AS SELECT c.cid, c.pid
FROM d58_child c LEFT JOIN d58_parent p ON c.pid = p.pid
WHERE p.pid IS NULL;
INSERT OR IGNORE INTO orphan_fk_audit_d58_meta VALUES ('module', 'orphan_fk_audit_d58');
