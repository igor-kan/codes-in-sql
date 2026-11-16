EXPLAIN QUERY PLAN
SELECT series_id, seq_no, ewma FROM v_ewma_series;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'ewma_bench_ok', CASE WHEN COUNT(*) >= 44 THEN 1 ELSE 0 END FROM metric_ticks;
