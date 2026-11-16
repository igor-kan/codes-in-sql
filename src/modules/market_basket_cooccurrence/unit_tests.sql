INSERT INTO order_items (order_id, item_id) VALUES
(1, 1), (1, 2), (1, 3),
(2, 1), (2, 2),
(3, 2), (3, 4),
(4, 1), (4, 3);

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'pair_1_2_conf',
       CASE WHEN ABS((SELECT conf_a_to_b FROM v_pair_associations WHERE item_a = 1 AND item_b = 2) - (2.0 / 3.0)) < 1e-9
       THEN 1 ELSE 0 END;
