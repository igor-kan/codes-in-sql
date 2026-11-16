CREATE INDEX idx_order_items_item ON order_items (item_id, order_id);

CREATE VIEW v_top_lift_pairs AS
SELECT item_a, item_b, pair_orders, ROUND(lift, 4) AS lift_score
FROM v_pair_associations
WHERE pair_orders >= (SELECT min_pair_orders FROM basket_thresholds WHERE id = 1)
ORDER BY lift DESC, pair_orders DESC;
