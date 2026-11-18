CREATE VIEW v_bom_explosion AS WITH RECURSIVE exp(root, part, total_qty, depth) AS (SELECT parent_part, child_part, qty, 1
FROM bom_links
WHERE parent_part='BIKE'
UNION ALL SELECT e.root, b.child_part, e.total_qty * b.qty, e.depth + 1
FROM exp e JOIN bom_links b ON e.part = b.parent_part
WHERE e.depth < 10) SELECT part, SUM(total_qty) AS required_units
FROM exp GROUP BY part;
INSERT OR IGNORE INTO bill_of_materials_explode_meta VALUES ('module', 'bill_of_materials_explode');
