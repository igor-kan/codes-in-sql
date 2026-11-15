CREATE INDEX idx_telemetry_svc_lat ON telemetry_samples (service_name, latency_ms);

CREATE VIEW v_service_deciles AS
SELECT service_name, decile, MIN(latency_ms) AS d_min, MAX(latency_ms) AS d_max, COUNT(*) AS cnt
FROM v_ranked_samples
GROUP BY service_name, decile;
