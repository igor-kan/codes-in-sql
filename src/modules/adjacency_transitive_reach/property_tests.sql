CREATE TEMP TABLE _adjacency_transitive_reach_prop(flag INTEGER);
CREATE TEMP TRIGGER _adjacency_transitive_reach_prop_trg BEFORE INSERT ON _adjacency_transitive_reach_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_closure WHERE src='B' AND dst='A') = 1) THEN RAISE(ABORT, 'property assertion failed for adjacency_transitive_reach') END; END;
INSERT INTO _adjacency_transitive_reach_prop VALUES (1);
