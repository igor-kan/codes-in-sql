INSERT INTO anomaly_iqr_tukey_fences_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM anomaly_iqr_tukey_fences_runs
WHERE ok = 1;
