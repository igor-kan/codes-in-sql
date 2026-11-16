CREATE INDEX idx_cat_score_id ON category_items (category_id, score DESC, item_id ASC);

CREATE VIEW v_cat_cutoffs AS
SELECT category_id, MIN(score) AS min_retained_score, COUNT(*) AS retained_count
FROM v_top_k_items
GROUP BY category_id;
