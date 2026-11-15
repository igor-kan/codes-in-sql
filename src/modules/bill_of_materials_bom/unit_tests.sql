INSERT INTO parts_catalog (part_id, part_name, unit_price, is_leaf) VALUES
(1, 'Bike', 0.0, 0),
(2, 'WheelAssembly', 0.0, 0),
(3, 'Frame', 120.0, 1),
(4, 'Rim', 25.0, 1),
(5, 'Spoke', 0.5, 1);

INSERT INTO bom_edges (parent_id, child_id, qty_per_parent) VALUES
(1, 2, 2.0), (1, 3, 1.0), (2, 4, 1.0), (2, 5, 32.0);

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'bike_exact_cost_202',
       CASE WHEN ABS((SELECT rolled_unit_cost FROM v_assembly_rolled_cost WHERE root_id = 1) - 202.0) < 1e-9
       THEN 1 ELSE 0 END;
