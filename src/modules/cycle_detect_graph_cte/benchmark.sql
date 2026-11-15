EXPLAIN QUERY PLAN
SELECT * FROM v_cycle_witnesses;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'edges_present', CASE WHEN COUNT(*) >= 10 THEN 1 ELSE 0 END FROM dag_edges;
