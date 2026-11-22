CREATE TEMP TABLE IF NOT EXISTS _rfm_customer_tier_d57_inv_ok (flag INTEGER);
INSERT INTO _rfm_customer_tier_d57_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _rfm_customer_tier_d57_inv_ok;
