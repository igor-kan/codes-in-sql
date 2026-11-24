CREATE TEMP TABLE _moving_sum_budget_d59_prop(flag INTEGER);
CREATE TEMP TRIGGER _moving_sum_budget_d59_prop_trg BEFORE INSERT ON _moving_sum_budget_d59_prop
BEGIN SELECT CASE WHEN NOT ((SELECT MAX(cum_amt) FROM v_d59_burn) = (SELECT SUM(amt) FROM d59_exp)) THEN RAISE(ABORT, 'property assertion failed for moving_sum_budget_d59') END; END;
INSERT INTO _moving_sum_budget_d59_prop VALUES (1);
