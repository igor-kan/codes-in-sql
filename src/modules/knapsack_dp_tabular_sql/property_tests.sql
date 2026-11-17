CREATE TEMP TABLE _knapsack_dp_tabular_sql_prop(flag INTEGER);
CREATE TEMP TRIGGER _knapsack_dp_tabular_sql_prop_trg BEFORE INSERT ON _knapsack_dp_tabular_sql_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM items) = 3) THEN RAISE(ABORT, 'property assertion failed for knapsack_dp_tabular_sql') END; END;
INSERT INTO _knapsack_dp_tabular_sql_prop VALUES (1);
