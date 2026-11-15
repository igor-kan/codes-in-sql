INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'funnel_monotonic_decay',
       CASE WHEN c_view >= c_cart AND c_cart >= c_checkout AND c_checkout >= c_purchase
       THEN 1 ELSE 0 END
FROM v_ordered_funnel;
