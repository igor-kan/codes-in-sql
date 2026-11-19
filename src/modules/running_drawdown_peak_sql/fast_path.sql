CREATE INDEX IF NOT EXISTS idx_running_drawdown_peak_sql_runs_ok ON running_drawdown_peak_sql_runs(ok);
SELECT COUNT(*) AS run_count
FROM running_drawdown_peak_sql_runs
WHERE ok = 1;
