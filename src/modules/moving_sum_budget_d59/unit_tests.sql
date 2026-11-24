INSERT INTO d59_exp VALUES ('P1',1,40,100),('P1',2,50,100),('P1',3,30,100);
CREATE TEMP TABLE _moving_sum_budget_d59_chk(flag INTEGER);
CREATE TEMP TRIGGER _moving_sum_budget_d59_chk_trg BEFORE INSERT ON _moving_sum_budget_d59_chk
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_d59_burn WHERE cum_amt > cap) = 1 AND (SELECT MAX(cum_amt) FROM v_d59_burn) = 120) THEN RAISE(ABORT, 'unit assertion failed for moving_sum_budget_d59') END; END;
INSERT INTO _moving_sum_budget_d59_chk VALUES (1);
