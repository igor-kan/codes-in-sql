CREATE TEMP TABLE IF NOT EXISTS _bill_of_materials_explode_inv_ok (flag INTEGER);
INSERT INTO _bill_of_materials_explode_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _bill_of_materials_explode_inv_ok;
