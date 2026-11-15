CREATE VIEW v_ranked_samples AS
SELECT
    sample_id,
    service_name,
    latency_ms,
    ROW_NUMBER() OVER (PARTITION BY service_name ORDER BY latency_ms) AS rn,
    COUNT(*) OVER (PARTITION BY service_name) AS n_total,
    CUME_DIST() OVER (PARTITION BY service_name ORDER BY latency_ms) AS emp_cdf,
    NTILE(10) OVER (PARTITION BY service_name ORDER BY latency_ms) AS decile
FROM telemetry_samples;
