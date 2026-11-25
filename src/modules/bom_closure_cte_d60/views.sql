CREATE VIEW v_d60_bom_cost AS WITH RECURSIVE exp(root, node, mult, unit_cost) AS (SELECT parent, child, qty, unit_cost
FROM d60_bom_edges
WHERE parent='BIKE'
UNION ALL SELECT e.root, b.child, e.mult * b.qty, b.unit_cost
FROM exp e JOIN d60_bom_edges b ON e.node = b.parent) SELECT root, SUM(mult * unit_cost) AS total_cost
FROM exp
WHERE node NOT IN (SELECT parent
FROM d60_bom_edges)
GROUP BY root;
INSERT OR IGNORE INTO bom_closure_cte_d60_meta VALUES ('module', 'bom_closure_cte_d60');
