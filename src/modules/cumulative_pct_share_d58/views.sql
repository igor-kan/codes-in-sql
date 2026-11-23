CREATE VIEW v_d58_share AS SELECT sku, rev, ROUND(SUM(rev) OVER (ORDER BY rev DESC ROWS UNBOUNDED PRECEDING) / SUM(rev) OVER (), 4) AS cum_pct
FROM d58_sku;
INSERT OR IGNORE INTO cumulative_pct_share_d58_meta VALUES ('module', 'cumulative_pct_share_d58');
