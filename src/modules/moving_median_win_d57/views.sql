CREATE VIEW v_d57_win AS SELECT a.t, a.price, MIN(b.price) AS wmin, MAX(b.price) AS wmax
FROM d57_ticks a JOIN d57_ticks b ON b.t BETWEEN a.t - 1 AND a.t + 1 GROUP BY a.t, a.price;
INSERT OR IGNORE INTO moving_median_win_d57_meta VALUES ('module', 'moving_median_win_d57');
