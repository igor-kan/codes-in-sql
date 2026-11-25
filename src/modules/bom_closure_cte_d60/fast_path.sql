CREATE INDEX IF NOT EXISTS idx_bom_closure_cte_d60_runs_ok ON bom_closure_cte_d60_runs(ok);
SELECT COUNT(*) AS run_count
FROM bom_closure_cte_d60_runs
WHERE ok = 1;
