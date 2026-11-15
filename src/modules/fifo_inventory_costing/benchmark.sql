EXPLAIN QUERY PLAN
SELECT * FROM v_sku_valuation_balance;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'lots_loaded', CASE WHEN COUNT(*) >= 13 THEN 1 ELSE 0 END FROM inventory_lots;
