CREATE VIEW v_d59_hist AS SELECT (x / 10) * 10 AS bin_lo, COUNT(*) AS cnt
FROM d59_obs GROUP BY bin_lo;
INSERT OR IGNORE INTO percentile_hist_bin_d59_meta VALUES ('module', 'percentile_hist_bin_d59');
