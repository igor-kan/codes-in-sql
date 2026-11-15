EXPLAIN QUERY PLAN
SELECT * FROM v_coalesced_islands;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'raw_count_check', CASE WHEN COUNT(*) >= 35 THEN 1 ELSE 0 END FROM raw_intervals;
