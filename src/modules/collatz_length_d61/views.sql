CREATE VIEW v_d61_collatz_steps AS WITH RECURSIVE c(seed_id, n, steps) AS (SELECT seed_id, n, 0
FROM d61_collatz_seeds
UNION ALL SELECT seed_id, CASE WHEN n % 2 = 0 THEN n / 2 ELSE 3 * n + 1 END, steps + 1
FROM c
WHERE n <> 1) SELECT seed_id, MAX(steps) AS total_steps
FROM c
GROUP BY seed_id;
INSERT OR IGNORE INTO collatz_length_d61_meta VALUES ('module', 'collatz_length_d61');
