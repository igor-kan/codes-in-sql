INSERT INTO sku_sales VALUES ('S1', 650), ('S2', 200), ('S3', 100), ('S4', 50);
CREATE TEMP TABLE _pareto_abc_inventory_sql_chk(flag INTEGER);
CREATE TEMP TRIGGER _pareto_abc_inventory_sql_chk_trg BEFORE INSERT ON _pareto_abc_inventory_sql_chk
BEGIN SELECT CASE WHEN NOT ((SELECT abc_tier FROM v_abc_class WHERE sku='S1') = 'A' AND (SELECT abc_tier FROM v_abc_class WHERE sku='S2') = 'B' AND (SELECT abc_tier FROM v_abc_class WHERE sku='S4') = 'C') THEN RAISE(ABORT, 'unit assertion failed for pareto_abc_inventory_sql') END; END;
INSERT INTO _pareto_abc_inventory_sql_chk VALUES (1);
