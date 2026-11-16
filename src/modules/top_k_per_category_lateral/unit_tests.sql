INSERT INTO category_items (item_id, category_id, score, updated_at) VALUES
(1, 10, 50, 1), (2, 10, 90, 2), (3, 10, 70, 3), (4, 10, 80, 4), (5, 10, 80, 5),
(6, 20, 15, 1), (7, 20, 45, 2);

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'cat10_top3_count',
       CASE WHEN (SELECT COUNT(*) FROM v_top_k_items WHERE category_id = 10) = 3 THEN 1 ELSE 0 END;
