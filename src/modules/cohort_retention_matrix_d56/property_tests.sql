CREATE TEMP TABLE _cohort_retention_matrix_d56_prop(flag INTEGER);
CREATE TEMP TRIGGER _cohort_retention_matrix_d56_prop_trg BEFORE INSERT ON _cohort_retention_matrix_d56_prop
BEGIN SELECT CASE WHEN NOT ((SELECT MIN(active_cnt) FROM v_d56_cohort_ret) >= 1) THEN RAISE(ABORT, 'property assertion failed for cohort_retention_matrix_d56') END; END;
INSERT INTO _cohort_retention_matrix_d56_prop VALUES (1);
