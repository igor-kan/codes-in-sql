INSERT INTO d56_cohort_evt VALUES (1,0),(1,1),(1,2),(2,0),(2,1),(3,0);
CREATE TEMP TABLE _cohort_retention_matrix_d56_chk(flag INTEGER);
CREATE TEMP TRIGGER _cohort_retention_matrix_d56_chk_trg BEFORE INSERT ON _cohort_retention_matrix_d56_chk
BEGIN SELECT CASE WHEN NOT ((SELECT active_cnt FROM v_d56_cohort_ret WHERE cohort_mo=0 AND delta_mo=0) = 3 AND (SELECT active_cnt FROM v_d56_cohort_ret WHERE cohort_mo=0 AND delta_mo=2) = 1) THEN RAISE(ABORT, 'unit assertion failed for cohort_retention_matrix_d56') END; END;
INSERT INTO _cohort_retention_matrix_d56_chk VALUES (1);
