CREATE INDEX IF NOT EXISTS idx_gini_lorenz_inequality_sql_runs_ok ON gini_lorenz_inequality_sql_runs(ok);
SELECT COUNT(*) AS run_count
FROM gini_lorenz_inequality_sql_runs
WHERE ok = 1;
