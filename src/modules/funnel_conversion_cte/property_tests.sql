WITH RECURSIVE users(u) AS (
    SELECT 10 UNION ALL SELECT u + 1 FROM users WHERE u < 29
)
INSERT INTO funnel_events (ev_id, user_id, stage, ts)
SELECT 100 + u, u, 'view', u * 10 FROM users
UNION ALL
SELECT 200 + u, u, 'cart', CASE WHEN u % 2 = 0 THEN u * 10 + 5 ELSE u * 10 - 5 END FROM users;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'monotonic_after_batch',
       CASE WHEN c_view >= c_cart AND c_cart >= c_checkout AND c_checkout >= c_purchase AND overall_cvr BETWEEN 0.0 AND 1.0
       THEN 1 ELSE 0 END
FROM v_funnel_rates;
