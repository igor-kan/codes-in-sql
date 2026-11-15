CREATE VIEW v_lot_cumulative_windows AS
SELECT
    l.lot_id,
    l.sku,
    l.lot_seq,
    l.qty,
    l.unit_cost,
    COALESCE(SUM(l.qty) OVER (
        PARTITION BY l.sku ORDER BY l.lot_seq ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING
    ), 0) AS cum_start,
    SUM(l.qty) OVER (
        PARTITION BY l.sku ORDER BY l.lot_seq ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS cum_end
FROM inventory_lots l;
