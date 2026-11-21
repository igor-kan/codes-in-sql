CREATE TEMP TABLE _dag_closure_cte_d56_prop(flag INTEGER);
CREATE TEMP TRIGGER _dag_closure_cte_d56_prop_trg BEFORE INSERT ON _dag_closure_cte_d56_prop
BEGIN SELECT CASE WHEN NOT ((SELECT MAX(depth) FROM v_d56_depth) = 2) THEN RAISE(ABORT, 'property assertion failed for dag_closure_cte_d56') END; END;
INSERT INTO _dag_closure_cte_d56_prop VALUES (1);
