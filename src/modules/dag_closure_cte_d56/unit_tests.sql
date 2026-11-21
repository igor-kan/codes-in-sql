INSERT INTO d56_org VALUES ('ceo', NULL), ('vp', 'ceo'), ('eng', 'vp');
CREATE TEMP TABLE _dag_closure_cte_d56_chk(flag INTEGER);
CREATE TEMP TRIGGER _dag_closure_cte_d56_chk_trg BEFORE INSERT ON _dag_closure_cte_d56_chk
BEGIN SELECT CASE WHEN NOT ((SELECT depth FROM v_d56_depth WHERE emp='ceo') = 0 AND (SELECT depth FROM v_d56_depth WHERE emp='eng') = 2) THEN RAISE(ABORT, 'unit assertion failed for dag_closure_cte_d56') END; END;
INSERT INTO _dag_closure_cte_d56_chk VALUES (1);
