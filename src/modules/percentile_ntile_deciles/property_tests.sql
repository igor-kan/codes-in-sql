WITH RECURSIVE vals(v) AS (
    SELECT 1 UNION ALL SELECT v + 1 FROM vals WHERE v < 50
)
INSERT INTO telemetry_samples (sample_id, service_name, latency_ms)
SELECT 1000 + v, 'checkout', 2.0 * v * v FROM vals;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'quantile_order_preserved',
       CASE WHEN p50_ms <= p90_ms AND p90_ms <= p95_ms THEN 1 ELSE 0 END
FROM v_service_quantiles WHERE service_name = 'checkout';
