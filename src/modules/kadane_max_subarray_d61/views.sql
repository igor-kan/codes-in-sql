CREATE VIEW v_d61_kadane_gain AS WITH p AS (SELECT seq, SUM(delta) OVER (ORDER BY seq ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS pref
FROM d61_kad_prices), m AS (SELECT seq, pref, MIN(pref) OVER (ORDER BY seq ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS minpref
FROM p) SELECT COALESCE(MAX(pref - minpref), 0) AS best_gain
FROM m;
INSERT OR IGNORE INTO kadane_max_subarray_d61_meta VALUES ('module', 'kadane_max_subarray_d61');
