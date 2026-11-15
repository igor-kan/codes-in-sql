WITH RECURSIVE lots(k) AS (
    SELECT 1 UNION ALL SELECT k + 1 FROM lots WHERE k < 10
)
INSERT INTO inventory_lots (lot_id, sku, lot_seq, qty, unit_cost)
SELECT 100 + k, 'GADGET', k, 5 * k, 1.5 * k FROM lots;

INSERT INTO sales_totals (sku, sold_qty) VALUES ('GADGET', 120);

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'gadget_cost_conservation',
       CASE WHEN COUNT(*) = 0 THEN 1 ELSE 0 END
FROM v_sku_valuation_balance
WHERE ABS(purchased_cost - (cogs + ending_inventory)) > 1e-7;
