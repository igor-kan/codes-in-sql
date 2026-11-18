CREATE VIEW v_rfm_scores AS WITH agg AS (SELECT cid, MAX(order_day) AS last_day, COUNT(*) AS freq, SUM(amount) AS monetary
FROM cust_orders GROUP BY cid) SELECT cid, NTILE(3) OVER (ORDER BY last_day ASC) AS r_score, NTILE(3) OVER (ORDER BY freq ASC) AS f_score, NTILE(3) OVER (ORDER BY monetary ASC) AS m_score
FROM agg;
INSERT OR IGNORE INTO rfm_customer_quintiles_meta VALUES ('module', 'rfm_customer_quintiles');
