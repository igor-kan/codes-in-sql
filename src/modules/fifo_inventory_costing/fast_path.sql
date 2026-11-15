CREATE INDEX idx_lots_sku_seq ON inventory_lots (sku, lot_seq);

CREATE VIEW v_sku_valuation_balance AS
SELECT
    sku,
    SUM(qty * unit_cost) AS purchased_cost,
    SUM(qty_sold_from_lot * unit_cost) AS cogs,
    SUM(qty_remaining_in_lot * unit_cost) AS ending_inventory
FROM v_fifo_lot_allocation
GROUP BY sku;
