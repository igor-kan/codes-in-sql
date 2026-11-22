CREATE VIEW v_d57_qrank AS SELECT id, ms, NTILE(4) OVER (ORDER BY ms) AS q4, ROUND(PERCENT_RANK() OVER (ORDER BY ms), 4) AS prank
FROM d57_lat;
INSERT OR IGNORE INTO percentile_ntile_rank_d57_meta VALUES ('module', 'percentile_ntile_rank_d57');
