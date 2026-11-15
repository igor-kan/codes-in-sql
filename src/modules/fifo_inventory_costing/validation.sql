CREATE VIEW v_oversold_skus AS
SELECT l.sku
FROM inventory_lots l
JOIN sales_totals s ON s.sku = l.sku
GROUP BY l.sku, s.sold_qty
HAVING s.sold_qty > SUM(l.qty);
