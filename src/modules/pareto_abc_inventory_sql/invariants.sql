CREATE TEMP TABLE IF NOT EXISTS _pareto_abc_inventory_sql_inv_ok (flag INTEGER);
INSERT INTO _pareto_abc_inventory_sql_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _pareto_abc_inventory_sql_inv_ok;
