CREATE INDEX idx_scd2_cust_dates
ON customer_tier_scd2 (customer_id, valid_from, valid_to);

CREATE VIEW v_tier_transitions AS
SELECT customer_id, COUNT(*) AS version_count, MIN(valid_from) AS first_seen
FROM customer_tier_scd2
GROUP BY customer_id;
