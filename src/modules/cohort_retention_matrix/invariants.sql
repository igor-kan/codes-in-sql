INSERT INTO cohort_summary (cohort_month, cohort_size, m0_users, m1_users, m2_users)
SELECT cohort_month, cohort_size, m0_users, m1_users, m2_users FROM v_retention_pivot;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'retention_bounds_valid',
       CASE WHEN COUNT(*) = 0 THEN 1 ELSE 0 END
FROM cohort_summary
WHERE m0_users > cohort_size OR m1_users > cohort_size OR m2_users > cohort_size;
