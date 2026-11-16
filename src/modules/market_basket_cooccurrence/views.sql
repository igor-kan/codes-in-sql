CREATE VIEW v_item_supports AS
SELECT
    item_id,
    COUNT(*) AS item_orders,
    CAST(COUNT(*) AS REAL) / (SELECT MAX(1, COUNT(DISTINCT order_id)) FROM order_items) AS support
FROM order_items
GROUP BY item_id;
