CREATE VIEW v_d58_growth AS SELECT qtr, rev, rev - LAG(rev) OVER (ORDER BY qtr) AS delta_rev
FROM d58_rev;
INSERT OR IGNORE INTO yoy_lag_growth_d58_meta VALUES ('module', 'yoy_lag_growth_d58');
