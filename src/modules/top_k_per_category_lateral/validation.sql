CREATE VIEW v_correlated_oracle_top_k AS
SELECT a.item_id, a.category_id, a.score
FROM category_items a
WHERE (
    SELECT COUNT(*)
    FROM category_items b
    WHERE b.category_id = a.category_id
      AND (b.score > a.score OR (b.score = a.score AND b.item_id < a.item_id))
) < (SELECT k FROM topk_settings WHERE id = 1);
