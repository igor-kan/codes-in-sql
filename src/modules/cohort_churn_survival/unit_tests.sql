INSERT INTO cohort_periods VALUES ('2026Q1',1,100,10),('2026Q1',2,90,10),('2026Q1',3,80,8);
CREATE TEMP TABLE _cohort_churn_survival_chk(flag INTEGER);
CREATE TEMP TRIGGER _cohort_churn_survival_chk_trg BEFORE INSERT ON _cohort_churn_survival_chk
BEGIN SELECT CASE WHEN NOT ((SELECT survival_prob FROM v_survival WHERE cohort='2026Q1' AND period=1) = 0.9 AND (SELECT ABS(survival_prob - 0.72) < 1e-5 FROM v_survival WHERE cohort='2026Q1' AND period=3)) THEN RAISE(ABORT, 'unit assertion failed for cohort_churn_survival') END; END;
INSERT INTO _cohort_churn_survival_chk VALUES (1);
