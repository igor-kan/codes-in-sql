BEGIN IMMEDIATE;
INSERT INTO bom_audit_log (check_name, detail) VALUES ('bom_schema', 'hierarchy explosion views active');
COMMIT;
