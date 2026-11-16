EXPLAIN QUERY PLAN
SELECT item_a, item_b, lift_score FROM v_top_lift_pairs;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'mkt_bench_ok', CASE WHEN COUNT(*) >= 40 THEN 1 ELSE 0 END FROM order_items;
