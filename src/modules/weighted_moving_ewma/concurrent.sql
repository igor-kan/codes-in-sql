BEGIN IMMEDIATE;
UPDATE ewma_params SET alpha = 0.25 WHERE id = 1;
INSERT INTO ewma_audit_log (check_name, detail) VALUES ('alpha_locked', 'alpha=0.25');
COMMIT;
