INSERT INTO cohort_churn_survival_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM cohort_churn_survival_runs
WHERE ok = 1;
