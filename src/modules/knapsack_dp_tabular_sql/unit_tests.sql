INSERT INTO knap_cfg VALUES (50); INSERT INTO items VALUES (1,10,60),(2,20,100),(3,30,120);
CREATE TEMP TABLE _knapsack_dp_tabular_sql_chk(flag INTEGER);
CREATE TEMP TRIGGER _knapsack_dp_tabular_sql_chk_trg BEFORE INSERT ON _knapsack_dp_tabular_sql_chk
BEGIN SELECT CASE WHEN NOT ((SELECT best_val FROM v_knapsack_opt) = 220) THEN RAISE(ABORT, 'unit assertion failed for knapsack_dp_tabular_sql') END; END;
INSERT INTO _knapsack_dp_tabular_sql_chk VALUES (1);
