CREATE TEMP TABLE _cohort_churn_survival_prop(flag INTEGER);
CREATE TEMP TRIGGER _cohort_churn_survival_prop_trg BEFORE INSERT ON _cohort_churn_survival_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_survival WHERE survival_prob > 1.0 OR survival_prob < 0.0) = 0) THEN RAISE(ABORT, 'property assertion failed for cohort_churn_survival') END; END;
INSERT INTO _cohort_churn_survival_prop VALUES (1);
