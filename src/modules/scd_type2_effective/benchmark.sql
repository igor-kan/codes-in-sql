EXPLAIN QUERY PLAN
SELECT tier_code FROM customer_tier_scd2
WHERE customer_id = 2 AND 80 >= valid_from AND 80 < valid_to;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'scd_total_versions', CASE WHEN COUNT(*) = 6 THEN 1 ELSE 0 END FROM customer_tier_scd2;
