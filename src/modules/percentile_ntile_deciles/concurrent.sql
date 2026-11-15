BEGIN IMMEDIATE;
INSERT INTO qtl_audit_log (check_name, detail) VALUES ('quantile_window_init', 'type-7 interpolated quantiles ready');
COMMIT;
