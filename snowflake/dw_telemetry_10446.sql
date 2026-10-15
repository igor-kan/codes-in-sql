-- Snowflake dynamic data warehouse model 10446
CREATE OR REPLACE TRANSIENT TABLE snow_telemetry_10446 (
  device_id STRING, ts TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
  metrics VARIANT
) CLUSTER BY (DATE(ts), device_id);
MERGE INTO snow_telemetry_10446 t USING (SELECT 'D-10446' as dev, PARSE_JSON('{"temp": 56}') as m) s
ON t.device_id = s.dev WHEN NOT MATCHED THEN INSERT (device_id, metrics) VALUES (s.dev, s.m);
