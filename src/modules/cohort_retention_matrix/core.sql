CREATE VIEW v_retention_pivot AS
WITH sizes AS (
    SELECT signup_month AS cohort_month, COUNT(*) AS cohort_size
    FROM users
    GROUP BY signup_month
),
pivoted AS (
    SELECT
        cohort_month,
        COUNT(DISTINCT user_id) FILTER (WHERE month_offset = 0) AS m0_users,
        COUNT(DISTINCT user_id) FILTER (WHERE month_offset = 1) AS m1_users,
        COUNT(DISTINCT user_id) FILTER (WHERE month_offset = 2) AS m2_users
    FROM v_cohort_offsets
    GROUP BY cohort_month
)
SELECT
    s.cohort_month,
    s.cohort_size,
    COALESCE(p.m0_users, 0) AS m0_users,
    COALESCE(p.m1_users, 0) AS m1_users,
    COALESCE(p.m2_users, 0) AS m2_users
FROM sizes s
LEFT JOIN pivoted p ON p.cohort_month = s.cohort_month;
