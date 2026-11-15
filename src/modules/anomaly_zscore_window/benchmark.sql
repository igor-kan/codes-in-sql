EXPLAIN QUERY PLAN
SELECT * FROM v_anomaly_candidates;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'stream_rows_loaded', CASE WHEN COUNT(*) >= 35 THEN 1 ELSE 0 END FROM metric_stream;
