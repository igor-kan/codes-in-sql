CREATE VIEW v_hist_cdf AS WITH ranked AS (SELECT grp, val, CAST(val / 10 AS INTEGER)*10 AS bin_lo, COUNT(*) OVER (PARTITION BY grp) AS tot, ROW_NUMBER() OVER (PARTITION BY grp ORDER BY val) AS rn
FROM metrics) SELECT grp, bin_lo, COUNT(*) AS cnt, MAX(CAST(rn AS REAL) / tot) AS cum_share
FROM ranked GROUP BY grp, bin_lo;
INSERT OR IGNORE INTO sliding_quantile_histogram_meta VALUES ('module', 'sliding_quantile_histogram');
