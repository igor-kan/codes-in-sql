INSERT INTO graph_edges VALUES ('A','B'),('B','C'),('C','A'),('C','D');
CREATE TEMP TABLE _adjacency_transitive_reach_chk(flag INTEGER);
CREATE TEMP TRIGGER _adjacency_transitive_reach_chk_trg BEFORE INSERT ON _adjacency_transitive_reach_chk
BEGIN SELECT CASE WHEN NOT ((SELECT min_hops FROM v_closure WHERE src='A' AND dst='D') = 3) THEN RAISE(ABORT, 'unit assertion failed for adjacency_transitive_reach') END; END;
INSERT INTO _adjacency_transitive_reach_chk VALUES (1);
