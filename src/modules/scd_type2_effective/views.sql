CREATE VIEW v_active_customer_tiers AS
SELECT surrogate_id, customer_id, tier_code, valid_from, valid_to
FROM customer_tier_scd2
WHERE is_current = 1;
