CREATE VIEW v_ewma AS WITH RECURSIVE ew(t, x, s) AS (SELECT s0.t, s0.x, s0.x
FROM series_obs s0
WHERE s0.t = 1
UNION ALL SELECT o.t, o.x, c.alpha * o.x + (1.0 - c.alpha) * e.s
FROM ew e JOIN series_obs o ON o.t = e.t + 1 CROSS JOIN ewma_cfg c) SELECT t, x, ROUND(s, 6) AS ewma
FROM ew;
INSERT OR IGNORE INTO exponential_ewma_alpha_sql_meta VALUES ('module', 'exponential_ewma_alpha_sql');
