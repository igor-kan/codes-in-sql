EXPLAIN QUERY PLAN
SELECT item_id, category_id, score FROM v_top_k_items;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'topk_bench_ok', CASE WHEN COUNT(*) >= 67 THEN 1 ELSE 0 END FROM category_items;
