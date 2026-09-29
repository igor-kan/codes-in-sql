-- PostgreSQL Analytical Architecture & Windowing Step 41
CREATE SCHEMA IF NOT EXISTS analytics_v41;

CREATE TABLE IF NOT EXISTS analytics_v41.metrics_log (
    event_id BIGSERIAL PRIMARY KEY,
    sensor_id INTEGER NOT NULL,
    recorded_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    metric_val DOUBLE PRECISION NOT NULL,
    status_flag VARCHAR(16) DEFAULT 'OK'
);

CREATE OR REPLACE FUNCTION analytics_v41.compute_moving_average_41(p_sensor_id INT)
RETURNS TABLE (
    event_id BIGINT,
    metric_val DOUBLE PRECISION,
    moving_avg DOUBLE PRECISION
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        m.event_id,
        m.metric_val,
        AVG(m.metric_val) OVER (
            PARTITION BY m.sensor_id 
            ORDER BY m.recorded_at 
            ROWS BETWEEN 10 PRECEDING AND CURRENT ROW
        ) AS moving_avg
    FROM analytics_v41.metrics_log m
    WHERE m.sensor_id = p_sensor_id;
END;
$$ LANGUAGE plpgsql;
