INSERT INTO inventory_lots (lot_id, sku, lot_seq, qty, unit_cost) VALUES
(1, 'WIDGET', 1, 10, 5.0),
(2, 'WIDGET', 2, 15, 8.0),
(3, 'WIDGET', 3, 20, 10.0);

INSERT INTO sales_totals (sku, sold_qty) VALUES ('WIDGET', 18);

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'widget_exact_cogs',
       CASE WHEN ABS((SELECT cogs FROM v_sku_valuation_balance WHERE sku = 'WIDGET') - 114.0) < 1e-9
       THEN 1 ELSE 0 END;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'widget_accounting_identity',
       CASE WHEN ABS(purchased_cost - (cogs + ending_inventory)) < 1e-9 THEN 1 ELSE 0 END
FROM v_sku_valuation_balance WHERE sku = 'WIDGET';
