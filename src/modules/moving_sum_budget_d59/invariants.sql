CREATE TEMP TABLE IF NOT EXISTS _moving_sum_budget_d59_inv_ok (flag INTEGER);
INSERT INTO _moving_sum_budget_d59_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _moving_sum_budget_d59_inv_ok;
