INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'pair_support_frechet_bound',
       CASE WHEN COUNT(*) = 0 THEN 1 ELSE 0 END
FROM v_pair_associations
WHERE pair_orders > a_orders OR pair_orders > b_orders OR item_a >= item_b;
