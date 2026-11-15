BEGIN IMMEDIATE;
UPDATE graph_guard SET version = version + 1 WHERE id = 1 AND version = 1;
INSERT INTO cyc_audit_log (check_name, detail) VALUES ('graph_scan', 'cycle detector initialized');
COMMIT;
