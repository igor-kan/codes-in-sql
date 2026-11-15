CREATE VIEW v_scd2_chain_gaps AS
WITH ordered AS (
    SELECT
        customer_id,
        valid_from,
        valid_to,
        LAG(valid_to) OVER (PARTITION BY customer_id ORDER BY valid_from) AS prev_valid_to
    FROM customer_tier_scd2
)
SELECT customer_id, prev_valid_to, valid_from
FROM ordered
WHERE prev_valid_to IS NOT NULL AND prev_valid_to <> valid_from;
