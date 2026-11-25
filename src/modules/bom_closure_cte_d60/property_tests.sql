CREATE TEMP TABLE _bom_closure_cte_d60_prop(flag INTEGER);
CREATE TEMP TRIGGER _bom_closure_cte_d60_prop_trg BEFORE INSERT ON _bom_closure_cte_d60_prop
BEGIN SELECT CASE WHEN NOT ((SELECT total_cost > 0 FROM v_d60_bom_cost WHERE root='BIKE') = 1) THEN RAISE(ABORT, 'property assertion failed for bom_closure_cte_d60') END; END;
INSERT INTO _bom_closure_cte_d60_prop VALUES (1);
