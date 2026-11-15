WITH RECURSIVE pts(t) AS (
    SELECT 1 UNION ALL SELECT t + 1 FROM pts WHERE t < 15
)
INSERT INTO metric_stream (metric_id, ts, val)
SELECT 1, t, CASE WHEN t = 12 THEN 100.0 ELSE 10.0 END FROM pts;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'single_spike_at_12',
       CASE WHEN (SELECT COUNT(*) FROM v_anomaly_candidates WHERE metric_id = 1) = 1
        AND (SELECT ts FROM v_anomaly_candidates WHERE metric_id = 1 LIMIT 1) = 12
       THEN 1 ELSE 0 END;
