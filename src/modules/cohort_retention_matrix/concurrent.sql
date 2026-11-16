BEGIN IMMEDIATE;
INSERT INTO coh_audit_log (check_name, detail)
SELECT 'policy_snapshot', 'min_cohort=' || min_cohort_size FROM retention_policy WHERE id = 1;
COMMIT;
