CREATE VIEW v_tukey_flags AS WITH ord AS (SELECT sensor, v, ROW_NUMBER() OVER (PARTITION BY sensor ORDER BY v) AS rn, COUNT(*) OVER (PARTITION BY sensor) AS cnt
FROM sensor_vals), q AS (SELECT sensor, MAX(CASE WHEN rn = CAST((cnt + 1) * 0.25 AS INTEGER) OR rn = 1 THEN v END) AS q1_approx, MAX(CASE WHEN rn = CAST((cnt * 3 + 1) / 4 AS INTEGER) THEN v END) AS q3_approx
FROM ord GROUP BY sensor) SELECT o.sensor, o.v, (CASE WHEN o.v > q.q3_approx + 1.5 * (q.q3_approx - q.q1_approx) OR o.v < q.q1_approx - 1.5 * (q.q3_approx - q.q1_approx) THEN 1 ELSE 0 END) AS is_outlier
FROM ord o JOIN q ON o.sensor = q.sensor;
INSERT OR IGNORE INTO anomaly_iqr_tukey_fences_meta VALUES ('module', 'anomaly_iqr_tukey_fences');
