CREATE TEMP TABLE _pagerank_damped_two_step_prop(flag INTEGER);
CREATE TEMP TRIGGER _pagerank_damped_two_step_prop_trg BEFORE INSERT ON _pagerank_damped_two_step_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_pagerank_step1 WHERE pr1 <= 0) = 0) THEN RAISE(ABORT, 'property assertion failed for pagerank_damped_two_step') END; END;
INSERT INTO _pagerank_damped_two_step_prop VALUES (1);
