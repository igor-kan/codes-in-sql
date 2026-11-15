CREATE VIEW v_fifo_lot_allocation AS
SELECT
    w.sku,
    w.lot_id,
    w.lot_seq,
    w.qty,
    w.unit_cost,
    MAX(0, MIN(w.cum_end, COALESCE(s.sold_qty, 0)) - w.cum_start) AS qty_sold_from_lot,
    w.qty - MAX(0, MIN(w.cum_end, COALESCE(s.sold_qty, 0)) - w.cum_start) AS qty_remaining_in_lot
FROM v_lot_cumulative_windows w
LEFT JOIN sales_totals s ON s.sku = w.sku;
