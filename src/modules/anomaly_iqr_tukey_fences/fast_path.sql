CREATE INDEX IF NOT EXISTS idx_anomaly_iqr_tukey_fences_runs_ok ON anomaly_iqr_tukey_fences_runs(ok);
SELECT COUNT(*) AS run_count
FROM anomaly_iqr_tukey_fences_runs
WHERE ok = 1;
