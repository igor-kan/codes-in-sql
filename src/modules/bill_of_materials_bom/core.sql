CREATE VIEW v_bom_explosion AS
WITH RECURSIVE tree(root_id, node_id, cum_qty, depth, path) AS (
    SELECT part_id, part_id, 1.0, 0, ',' || part_id || ','
    FROM parts_catalog
    WHERE is_leaf = 0
    UNION ALL
    SELECT
        t.root_id,
        e.child_id,
        t.cum_qty * e.qty_per_parent,
        t.depth + 1,
        t.path || e.child_id || ','
    FROM tree t
    JOIN bom_edges e ON e.parent_id = t.node_id
    WHERE instr(t.path, ',' || e.child_id || ',') = 0 AND t.depth < 16
)
SELECT
    t.root_id,
    p.part_id AS leaf_id,
    p.part_name AS leaf_name,
    t.cum_qty,
    t.cum_qty * p.unit_price AS extended_cost
FROM tree t
JOIN parts_catalog p ON p.part_id = t.node_id
WHERE p.is_leaf = 1;
