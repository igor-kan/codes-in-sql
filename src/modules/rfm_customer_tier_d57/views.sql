CREATE VIEW v_d57_rfm AS SELECT cid, MAX(day_num) AS last_day, COUNT(*) AS freq, SUM(spend) AS total_spend
FROM d57_orders GROUP BY cid;
INSERT OR IGNORE INTO rfm_customer_tier_d57_meta VALUES ('module', 'rfm_customer_tier_d57');
