INSERT INTO bom_links VALUES ('BIKE','WHEEL',2),('BIKE','FRAME',1),('WHEEL','SPOKE',16),('FRAME','BOLT',4),('WHEEL','BOLT',2);
CREATE TEMP TABLE _bill_of_materials_explode_chk(flag INTEGER);
CREATE TEMP TRIGGER _bill_of_materials_explode_chk_trg BEFORE INSERT ON _bill_of_materials_explode_chk
BEGIN SELECT CASE WHEN NOT ((SELECT required_units FROM v_bom_explosion WHERE part='SPOKE') = 32 AND (SELECT required_units FROM v_bom_explosion WHERE part='BOLT') = 8) THEN RAISE(ABORT, 'unit assertion failed for bill_of_materials_explode') END; END;
INSERT INTO _bill_of_materials_explode_chk VALUES (1);
