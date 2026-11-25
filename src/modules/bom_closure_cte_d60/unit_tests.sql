INSERT INTO d60_bom_edges VALUES ('BIKE','WHEEL',2,0),('BIKE','FRAME',1,100),('WHEEL','SPOKE',10,2),('WHEEL','TIRE',1,25);
CREATE TEMP TABLE _bom_closure_cte_d60_chk(flag INTEGER);
CREATE TEMP TRIGGER _bom_closure_cte_d60_chk_trg BEFORE INSERT ON _bom_closure_cte_d60_chk
BEGIN SELECT CASE WHEN NOT ((SELECT total_cost FROM v_d60_bom_cost WHERE root='BIKE') = 190.0) THEN RAISE(ABORT, 'unit assertion failed for bom_closure_cte_d60') END; END;
INSERT INTO _bom_closure_cte_d60_chk VALUES (1);
