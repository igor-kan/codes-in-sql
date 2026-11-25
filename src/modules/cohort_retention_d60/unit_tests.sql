INSERT INTO d60_cohort_users VALUES (1,1),(2,1),(3,1),(4,2),(5,2);
INSERT INTO d60_cohort_act VALUES (1,1),(1,2),(2,2),(3,1),(4,2);
CREATE TEMP TABLE _cohort_retention_d60_chk(flag INTEGER);
CREATE TEMP TRIGGER _cohort_retention_d60_chk_trg BEFORE INSERT ON _cohort_retention_d60_chk
BEGIN SELECT CASE WHEN NOT ((SELECT m0_users FROM v_d60_cohort_ret WHERE cohort_m=1) = 3 AND (SELECT m1_users FROM v_d60_cohort_ret WHERE cohort_m=1) = 2) THEN RAISE(ABORT, 'unit assertion failed for cohort_retention_d60') END; END;
INSERT INTO _cohort_retention_d60_chk VALUES (1);
