CREATE INDEX IF NOT EXISTS idx_pivot_crosstab_sum_d57_runs_ok ON pivot_crosstab_sum_d57_runs(ok);
SELECT COUNT(*) AS run_count
FROM pivot_crosstab_sum_d57_runs
WHERE ok = 1;
