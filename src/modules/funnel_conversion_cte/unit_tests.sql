INSERT INTO funnel_events (ev_id, user_id, stage, ts) VALUES
(1, 1, 'view', 10), (2, 1, 'cart', 20), (3, 1, 'checkout', 30), (4, 1, 'purchase', 40),
(5, 2, 'view', 10), (6, 2, 'cart', 25),
(7, 3, 'cart', 5), (8, 3, 'view', 15), (9, 3, 'purchase', 30);

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'exact_funnel_counts',
       CASE WHEN c_view = 3 AND c_cart = 2 AND c_checkout = 1 AND c_purchase = 1
       THEN 1 ELSE 0 END
FROM v_ordered_funnel;
