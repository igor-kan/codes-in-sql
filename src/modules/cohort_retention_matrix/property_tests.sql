WITH RECURSIVE gen(u) AS (
    SELECT 100 UNION ALL SELECT u + 1 FROM gen WHERE u < 129
)
INSERT INTO users (user_id, signup_month)
SELECT u, (u % 3) FROM gen;

INSERT INTO user_activity (user_id, active_month)
SELECT user_id, signup_month FROM users WHERE user_id >= 100;

DELETE FROM cohort_summary;
INSERT INTO cohort_summary SELECT * FROM v_retention_pivot;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'all_users_m0_retained',
       CASE WHEN COUNT(*) = 0 THEN 1 ELSE 0 END
FROM cohort_summary WHERE m0_users != cohort_size;
