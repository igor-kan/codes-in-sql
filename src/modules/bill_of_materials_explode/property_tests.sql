CREATE TEMP TABLE _bill_of_materials_explode_prop(flag INTEGER);
CREATE TEMP TRIGGER _bill_of_materials_explode_prop_trg BEFORE INSERT ON _bill_of_materials_explode_prop
BEGIN SELECT CASE WHEN NOT ((SELECT required_units FROM v_bom_explosion WHERE part='WHEEL') = 2) THEN RAISE(ABORT, 'property assertion failed for bill_of_materials_explode') END; END;
INSERT INTO _bill_of_materials_explode_prop VALUES (1);
