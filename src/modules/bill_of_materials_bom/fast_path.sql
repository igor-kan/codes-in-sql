CREATE INDEX idx_bom_parent_child ON bom_edges (parent_id, child_id);

CREATE VIEW v_assembly_rolled_cost AS
SELECT root_id, SUM(cum_qty) AS total_leaf_units, SUM(extended_cost) AS rolled_unit_cost
FROM v_bom_explosion
GROUP BY root_id;
