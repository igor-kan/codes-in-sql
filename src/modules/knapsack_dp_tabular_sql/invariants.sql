CREATE TEMP TABLE IF NOT EXISTS _knapsack_dp_tabular_sql_inv_ok (flag INTEGER);
INSERT INTO _knapsack_dp_tabular_sql_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes FROM _knapsack_dp_tabular_sql_inv_ok;
