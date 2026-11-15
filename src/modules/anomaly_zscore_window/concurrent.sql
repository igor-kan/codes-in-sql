BEGIN IMMEDIATE;
INSERT INTO zsc_audit_log (check_name, detail) VALUES ('zscore_init', 'trailing 7-point window initialized');
COMMIT;
