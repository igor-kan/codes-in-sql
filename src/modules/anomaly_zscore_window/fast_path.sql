CREATE INDEX idx_metric_stream_pk ON metric_stream (metric_id, ts, val);

CREATE VIEW v_metric_spike_summary AS
SELECT metric_id, COUNT(*) AS total_points, SUM(CASE WHEN ABS(z_score) >= 3.0 THEN 1 ELSE 0 END) AS spike_count
FROM v_rolling_zscores
GROUP BY metric_id;
