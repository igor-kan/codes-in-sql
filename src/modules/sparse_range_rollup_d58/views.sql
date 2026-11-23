CREATE VIEW v_d58_tiers AS SELECT CASE WHEN amt < 50 THEN 'small' WHEN amt < 200 THEN 'med' ELSE 'large' END AS tier, SUM(amt) AS tier_sum, COUNT(*) AS cnt
FROM d58_tickets GROUP BY tier;
INSERT OR IGNORE INTO sparse_range_rollup_d58_meta VALUES ('module', 'sparse_range_rollup_d58');
