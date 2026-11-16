WITH RECURSIVE o(id) AS (SELECT 10 UNION ALL SELECT id + 1 FROM o WHERE id < 29)
INSERT INTO order_items (order_id, item_id)
SELECT id, (id % 5) + 1 FROM o;

WITH RECURSIVE o2(id) AS (SELECT 10 UNION ALL SELECT id + 1 FROM o2 WHERE id < 29)
INSERT OR IGNORE INTO order_items (order_id, item_id)
SELECT id, ((id + 1) % 5) + 1 FROM o2;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'canonical_pair_prop',
       CASE WHEN COUNT(*) = 0 THEN 1 ELSE 0 END
FROM v_pair_associations WHERE item_a >= item_b OR lift <= 0.0;
