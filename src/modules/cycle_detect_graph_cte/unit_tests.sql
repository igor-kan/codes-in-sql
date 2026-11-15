INSERT INTO dag_edges (src, dst) VALUES (1, 2), (2, 3), (3, 4);

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'chain_acyclic',
       CASE WHEN (SELECT COUNT(*) FROM v_cycle_witnesses) = 0 THEN 1 ELSE 0 END;

INSERT INTO dag_edges (src, dst) VALUES (4, 2);

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'loop_234_detected',
       CASE WHEN (SELECT COUNT(*) FROM v_cyclic_nodes WHERE node_id IN (2, 3, 4)) >= 1 THEN 1 ELSE 0 END;
