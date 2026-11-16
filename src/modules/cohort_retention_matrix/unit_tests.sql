INSERT INTO users (user_id, signup_month) VALUES
(1, 0), (2, 0), (3, 0),
(4, 1), (5, 1);

INSERT INTO user_activity (user_id, active_month) VALUES
(1, 0), (1, 1), (1, 2),
(2, 0), (2, 1),
(3, 0),
(4, 1), (4, 2),
(5, 1);

DELETE FROM cohort_summary;
INSERT INTO cohort_summary SELECT * FROM v_retention_pivot;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'cohort_0_m1_count',
       CASE WHEN (SELECT m1_users FROM cohort_summary WHERE cohort_month = 0) = 2 THEN 1 ELSE 0 END;
