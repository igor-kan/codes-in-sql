CREATE VIEW v_gini_coeff AS WITH r AS (SELECT wealth, ROW_NUMBER() OVER (ORDER BY wealth ASC, person_id ASC) AS i, COUNT(*) OVER () AS n
FROM wealth_obs) SELECT ROUND((2.0 * SUM(i * wealth)) / (MAX(n) * SUM(wealth)) - (MAX(n) + 1.0) / MAX(n), 6) AS gini
FROM r;
INSERT OR IGNORE INTO gini_lorenz_inequality_sql_meta VALUES ('module', 'gini_lorenz_inequality_sql');
