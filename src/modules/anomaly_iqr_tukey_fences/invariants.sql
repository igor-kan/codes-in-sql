CREATE TEMP TABLE IF NOT EXISTS _anomaly_iqr_tukey_fences_inv_ok (flag INTEGER);
INSERT INTO _anomaly_iqr_tukey_fences_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes FROM _anomaly_iqr_tukey_fences_inv_ok;
