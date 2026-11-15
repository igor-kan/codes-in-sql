INSERT INTO parts_catalog (part_id, part_name, unit_price, is_leaf) VALUES
(10, 'DualBikePack', 0.0, 0);

INSERT INTO bom_edges (parent_id, child_id, qty_per_parent) VALUES (10, 1, 3.0);

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'pack_linearity_3x',
       CASE WHEN ABS((SELECT rolled_unit_cost FROM v_assembly_rolled_cost WHERE root_id = 10) - 606.0) < 1e-9
       THEN 1 ELSE 0 END;
