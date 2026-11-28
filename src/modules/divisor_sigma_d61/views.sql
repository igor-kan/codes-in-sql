CREATE VIEW v_d61_sigma_proper AS WITH RECURSIVE cand(num_id, n, d) AS (SELECT num_id, n, 1
FROM d61_sigma_inputs
UNION ALL SELECT num_id, n, d + 1
FROM cand
WHERE d < n) SELECT num_id, COALESCE(SUM(CASE WHEN d < n AND n % d = 0 THEN d ELSE 0 END), 0) AS sigma
FROM cand
GROUP BY num_id;
INSERT OR IGNORE INTO divisor_sigma_d61_meta VALUES ('module', 'divisor_sigma_d61');
