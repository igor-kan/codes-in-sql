BEGIN IMMEDIATE;
UPDATE customer_tier_scd2 SET valid_to = 250, is_current = 0 WHERE customer_id = 1 AND is_current = 1;
INSERT INTO customer_tier_scd2 (customer_id, tier_code, valid_from, valid_to, is_current)
VALUES (1, 'ENT', 250, 999999999, 1);
COMMIT;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'point_in_time_t50_free',
       CASE WHEN (SELECT tier_code FROM customer_tier_scd2 WHERE customer_id = 1 AND 50 >= valid_from AND 50 < valid_to) = 'FREE'
       THEN 1 ELSE 0 END;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'point_in_time_t150_pro',
       CASE WHEN (SELECT tier_code FROM customer_tier_scd2 WHERE customer_id = 1 AND 150 >= valid_from AND 150 < valid_to) = 'PRO'
       THEN 1 ELSE 0 END;
