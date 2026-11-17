INSERT INTO sensor_vals VALUES ('s1',10),('s1',11),('s1',12),('s1',12),('s1',13),('s1',13),('s1',14),('s1',15),('s1',100);
CREATE TEMP TABLE _anomaly_iqr_tukey_fences_chk(flag INTEGER);
CREATE TEMP TRIGGER _anomaly_iqr_tukey_fences_chk_trg BEFORE INSERT ON _anomaly_iqr_tukey_fences_chk
BEGIN SELECT CASE WHEN NOT ((SELECT is_outlier FROM v_tukey_flags WHERE sensor='s1' AND v=100) = 1) THEN RAISE(ABORT, 'unit assertion failed for anomaly_iqr_tukey_fences') END; END;
INSERT INTO _anomaly_iqr_tukey_fences_chk VALUES (1);
