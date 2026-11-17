CREATE TEMP TABLE _anomaly_iqr_tukey_fences_prop(flag INTEGER);
CREATE TEMP TRIGGER _anomaly_iqr_tukey_fences_prop_trg BEFORE INSERT ON _anomaly_iqr_tukey_fences_prop
BEGIN SELECT CASE WHEN NOT ((SELECT SUM(is_outlier) FROM v_tukey_flags WHERE sensor='s1' AND v BETWEEN 10 AND 15) = 0) THEN RAISE(ABORT, 'property assertion failed for anomaly_iqr_tukey_fences') END; END;
INSERT INTO _anomaly_iqr_tukey_fences_prop VALUES (1);
