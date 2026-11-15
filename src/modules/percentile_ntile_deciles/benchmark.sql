EXPLAIN QUERY PLAN
SELECT * FROM v_service_quantiles;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'samples_populated', CASE WHEN COUNT(*) >= 151 THEN 1 ELSE 0 END FROM telemetry_samples;
