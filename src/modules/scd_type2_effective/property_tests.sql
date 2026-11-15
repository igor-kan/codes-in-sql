INSERT INTO customer_tier_scd2 (customer_id, tier_code, valid_from, valid_to, is_current)
VALUES (2, 'FREE', 10, 50, 0), (2, 'PRO', 50, 120, 0), (2, 'ENT', 120, 999999999, 1);

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'cust2_zero_chain_gaps',
       CASE WHEN (SELECT COUNT(*) FROM v_scd2_chain_gaps) = 0 THEN 1 ELSE 0 END;
