WITH RECURSIVE vals(v) AS (
    SELECT 1 UNION ALL SELECT v + 1 FROM vals WHERE v < 101
)
INSERT INTO telemetry_samples (sample_id, service_name, latency_ms)
SELECT v, 'auth', CAST(v AS REAL) FROM vals;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'exact_type7_quantiles_1_to_101',
       CASE WHEN ABS(p50_ms - 51.0) < 1e-9 AND ABS(p90_ms - 91.0) < 1e-9 AND ABS(p95_ms - 96.0) < 1e-9
       THEN 1 ELSE 0 END
FROM v_service_quantiles WHERE service_name = 'auth';
