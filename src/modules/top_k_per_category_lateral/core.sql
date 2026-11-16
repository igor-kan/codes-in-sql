CREATE VIEW v_top_k_items AS
SELECT item_id, category_id, score, rn
FROM v_ranked_items
WHERE rn <= (SELECT k FROM topk_settings WHERE id = 1);
