INSERT INTO pr_nodes VALUES (1),(2),(3); INSERT INTO pr_edges VALUES (1,3),(2,3),(3,1);
CREATE TEMP TABLE _pagerank_damped_two_step_chk(flag INTEGER);
CREATE TEMP TRIGGER _pagerank_damped_two_step_chk_trg BEFORE INSERT ON _pagerank_damped_two_step_chk
BEGIN SELECT CASE WHEN NOT ((SELECT nid FROM v_pagerank_step1 ORDER BY pr1 DESC LIMIT 1) = 3) THEN RAISE(ABORT, 'unit assertion failed for pagerank_damped_two_step') END; END;
INSERT INTO _pagerank_damped_two_step_chk VALUES (1);
