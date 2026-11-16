CREATE INDEX idx_users_signup_month ON users (signup_month, user_id);
CREATE INDEX idx_activity_month ON user_activity (active_month, user_id);

CREATE VIEW v_retention_rates AS
SELECT
    cohort_month,
    ROUND(100.0 * m0_users / cohort_size, 2) AS m0_pct,
    ROUND(100.0 * m1_users / cohort_size, 2) AS m1_pct,
    ROUND(100.0 * m2_users / cohort_size, 2) AS m2_pct
FROM v_retention_pivot;
