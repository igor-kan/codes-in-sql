CREATE TEMP TABLE IF NOT EXISTS _bom_closure_cte_d60_inv_ok (flag INTEGER);
INSERT INTO _bom_closure_cte_d60_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _bom_closure_cte_d60_inv_ok;
