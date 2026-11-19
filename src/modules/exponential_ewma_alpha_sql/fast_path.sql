CREATE INDEX IF NOT EXISTS idx_exponential_ewma_alpha_sql_runs_ok ON exponential_ewma_alpha_sql_runs(ok);
SELECT COUNT(*) AS run_count
FROM exponential_ewma_alpha_sql_runs
WHERE ok = 1;
