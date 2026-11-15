BEGIN IMMEDIATE;
UPDATE funnel_meta SET version = version + 1 WHERE id = 1 AND version = 1;
INSERT INTO fnl_audit_log (check_name, detail) VALUES ('funnel_snapshot', 'monotonic audit initialized');
COMMIT;
