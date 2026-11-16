CREATE VIEW v_pair_associations AS
WITH tot AS (
    SELECT MAX(1, COUNT(DISTINCT order_id)) AS n_orders FROM order_items
),
pairs AS (
    SELECT a.item_id AS item_a, b.item_id AS item_b, COUNT(*) AS pair_orders
    FROM order_items a
    JOIN order_items b ON a.order_id = b.order_id AND a.item_id < b.item_id
    GROUP BY a.item_id, b.item_id
)
SELECT
    p.item_a,
    p.item_b,
    p.pair_orders,
    sa.item_orders AS a_orders,
    sb.item_orders AS b_orders,
    CAST(p.pair_orders AS REAL) / tot.n_orders AS pair_support,
    CAST(p.pair_orders AS REAL) / sa.item_orders AS conf_a_to_b,
    (CAST(p.pair_orders AS REAL) / tot.n_orders) / (sa.support * sb.support) AS lift
FROM pairs p
CROSS JOIN tot
JOIN v_item_supports sa ON sa.item_id = p.item_a
JOIN v_item_supports sb ON sb.item_id = p.item_b;
