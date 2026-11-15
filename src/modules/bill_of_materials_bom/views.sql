CREATE VIEW v_bom_direct_edges AS
SELECT p.part_name AS parent_name, c.part_name AS child_name, e.qty_per_parent
FROM bom_edges e
JOIN parts_catalog p ON p.part_id = e.parent_id
JOIN parts_catalog c ON c.part_id = e.child_id;
