CREATE VIEW v_d60_hhi AS WITH sh AS (SELECT sector, firm, 100.0 * rev / SUM(rev) OVER (PARTITION BY sector) AS pct
FROM d60_mkt_rev) SELECT sector, ROUND(SUM(pct * pct), 4) AS hhi
FROM sh
GROUP BY sector;
INSERT OR IGNORE INTO hhi_concentration_d60_meta VALUES ('module', 'hhi_concentration_d60');
