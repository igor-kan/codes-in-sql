INSERT INTO topk_settings (id, k) VALUES (1, 3);

CREATE VIEW v_ranked_items AS
SELECT
    item_id,
    category_id,
    score,
    ROW_NUMBER() OVER (PARTITION BY category_id ORDER BY score DESC, item_id ASC) AS rn
FROM category_items;
