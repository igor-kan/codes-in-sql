CREATE VIEW v_d61_gcd_recursive AS WITH RECURSIVE g(pair_id, a, b) AS (SELECT pair_id, a, b
FROM d61_gcd_pairs
UNION ALL SELECT pair_id, b, a % b
FROM g
WHERE b > 0) SELECT pair_id, a AS gcd_val
FROM g
WHERE b = 0;
INSERT OR IGNORE INTO gcd_recursive_d61_meta VALUES ('module', 'gcd_recursive_d61');
