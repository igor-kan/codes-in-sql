BEGIN IMMEDIATE;
INSERT INTO spgemm_audit_log (check_name, detail) VALUES ('coo_index_ready', 'k_indexed');
COMMIT;
