WITH RECURSIVE flat(t) AS (
    SELECT 1 UNION ALL SELECT t + 1 FROM flat WHERE t < 20
)
INSERT INTO metric_stream (metric_id, ts, val)
SELECT 2, t, 42.5 FROM flat;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'flat_line_zero_anomalies',
       CASE WHEN (SELECT spike_count FROM v_metric_spike_summary WHERE metric_id = 2) = 0 THEN 1 ELSE 0 END;
