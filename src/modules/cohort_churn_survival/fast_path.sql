CREATE INDEX IF NOT EXISTS idx_cohort_churn_survival_runs_ok ON cohort_churn_survival_runs(ok);
SELECT COUNT(*) AS run_count
FROM cohort_churn_survival_runs
WHERE ok = 1;
