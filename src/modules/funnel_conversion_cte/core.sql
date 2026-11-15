CREATE VIEW v_ordered_funnel AS
WITH step1 AS (
    SELECT user_id, MIN(ts) AS t1
    FROM funnel_events WHERE stage = 'view'
    GROUP BY user_id
),
step2 AS (
    SELECT s1.user_id, s1.t1, MIN(e.ts) AS t2
    FROM step1 s1
    JOIN funnel_events e ON e.user_id = s1.user_id AND e.stage = 'cart' AND e.ts > s1.t1
    GROUP BY s1.user_id, s1.t1
),
step3 AS (
    SELECT s2.user_id, s2.t1, s2.t2, MIN(e.ts) AS t3
    FROM step2 s2
    JOIN funnel_events e ON e.user_id = s2.user_id AND e.stage = 'checkout' AND e.ts > s2.t2
    GROUP BY s2.user_id, s2.t1, s2.t2
),
step4 AS (
    SELECT s3.user_id, s3.t1, s3.t2, s3.t3, MIN(e.ts) AS t4
    FROM step3 s3
    JOIN funnel_events e ON e.user_id = s3.user_id AND e.stage = 'purchase' AND e.ts > s3.t3
    GROUP BY s3.user_id, s3.t1, s3.t2, s3.t3
)
SELECT
    (SELECT COUNT(*) FROM step1) AS c_view,
    (SELECT COUNT(*) FROM step2) AS c_cart,
    (SELECT COUNT(*) FROM step3) AS c_checkout,
    (SELECT COUNT(*) FROM step4) AS c_purchase;
