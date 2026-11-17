CREATE TABLE cohort_periods (cohort TEXT NOT NULL,
    period INTEGER NOT NULL,
    at_risk INTEGER NOT NULL CHECK(at_risk > 0),
    churned INTEGER NOT NULL CHECK(churned >= 0 AND churned <= at_risk),
    PRIMARY KEY(cohort,
    period));
CREATE TABLE IF NOT EXISTS cohort_churn_survival_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
