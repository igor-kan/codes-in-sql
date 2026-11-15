EXPLAIN QUERY PLAN
SELECT * FROM v_assembly_rolled_cost;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'bom_parts_loaded', CASE WHEN COUNT(*) = 6 THEN 1 ELSE 0 END FROM parts_catalog;
