WITH RECURSIVE gen(i) AS (SELECT 100 UNION ALL SELECT i + 1 FROM gen WHERE i < 159)
INSERT INTO category_items (item_id, category_id, score, updated_at)
SELECT i, (i % 5) + 1, (i * 37) % 101, i FROM gen;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'max_k_per_cat_prop',
       CASE WHEN (SELECT MAX(retained_count) FROM v_cat_cutoffs) <= 3 THEN 1 ELSE 0 END;
