CREATE VIEW v_d56_mavg AS SELECT day_seq, val, AVG(val) OVER (ORDER BY day_seq ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS ma3
FROM d56_ts_metric;
INSERT OR IGNORE INTO rolling_7d_window_avg_d56_meta VALUES ('module', 'rolling_7d_window_avg_d56');
