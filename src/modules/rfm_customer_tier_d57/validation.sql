INSERT INTO rfm_customer_tier_d57_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM rfm_customer_tier_d57_runs
WHERE ok = 1;
