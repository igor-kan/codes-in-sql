CREATE TEMP TABLE _pareto_abc_inventory_sql_prop(flag INTEGER);
CREATE TEMP TRIGGER _pareto_abc_inventory_sql_prop_trg BEFORE INSERT ON _pareto_abc_inventory_sql_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_abc_class) = 4) THEN RAISE(ABORT, 'property assertion failed for pareto_abc_inventory_sql') END; END;
INSERT INTO _pareto_abc_inventory_sql_prop VALUES (1);
