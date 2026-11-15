CREATE UNIQUE INDEX idx_one_current_per_customer
ON customer_tier_scd2 (customer_id)
WHERE is_current = 1;
