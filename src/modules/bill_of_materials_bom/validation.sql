CREATE VIEW v_bom_orphan_parents AS
SELECT DISTINCT e.parent_id
FROM bom_edges e
JOIN parts_catalog p ON p.part_id = e.parent_id
WHERE p.is_leaf = 1;
