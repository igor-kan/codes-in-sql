CREATE VIEW v_cohort_offsets AS
SELECT
    u.user_id,
    u.signup_month AS cohort_month,
    (a.active_month - u.signup_month) AS month_offset
FROM users u
JOIN user_activity a ON a.user_id = u.user_id;
