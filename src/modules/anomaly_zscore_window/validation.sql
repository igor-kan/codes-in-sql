CREATE VIEW v_anomaly_candidates AS
SELECT metric_id, ts, val, z_score
FROM v_rolling_zscores
WHERE win_n >= 4 AND ABS(z_score) >= 3.0;
