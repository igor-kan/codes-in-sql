CREATE VIEW v_abc_class AS WITH s AS (SELECT sku, rev, SUM(rev) OVER (ORDER BY rev DESC) / SUM(rev) OVER () AS cum_share
FROM sku_sales) SELECT sku, rev, cum_share, (CASE WHEN cum_share <= 0.70 THEN 'A' WHEN cum_share <= 0.90 THEN 'B' ELSE 'C' END) AS abc_tier
FROM s;
INSERT OR IGNORE INTO pareto_abc_inventory_sql_meta VALUES ('module', 'pareto_abc_inventory_sql');
