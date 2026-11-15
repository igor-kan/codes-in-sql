INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'empty_graph_acyclic',
       CASE WHEN (SELECT COUNT(*) FROM v_cycle_witnesses) = 0 THEN 1 ELSE 0 END;
