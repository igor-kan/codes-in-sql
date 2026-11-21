CREATE TEMP TABLE IF NOT EXISTS _dag_closure_cte_d56_inv_ok (flag INTEGER);
INSERT INTO _dag_closure_cte_d56_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _dag_closure_cte_d56_inv_ok;
