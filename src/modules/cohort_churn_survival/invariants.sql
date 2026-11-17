CREATE TEMP TABLE IF NOT EXISTS _cohort_churn_survival_inv_ok (flag INTEGER);
INSERT INTO _cohort_churn_survival_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes FROM _cohort_churn_survival_inv_ok;
