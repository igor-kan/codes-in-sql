INSERT INTO rfm_customer_quintiles_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM rfm_customer_quintiles_runs
WHERE ok = 1;
