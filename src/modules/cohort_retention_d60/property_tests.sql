CREATE TEMP TABLE _cohort_retention_d60_prop(flag INTEGER);
CREATE TEMP TRIGGER _cohort_retention_d60_prop_trg BEFORE INSERT ON _cohort_retention_d60_prop
BEGIN SELECT CASE WHEN NOT ((SELECT MIN(m0_users >= m1_users) FROM v_d60_cohort_ret) = 1) THEN RAISE(ABORT, 'property assertion failed for cohort_retention_d60') END; END;
INSERT INTO _cohort_retention_d60_prop VALUES (1);
