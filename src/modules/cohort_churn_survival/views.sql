CREATE VIEW v_survival AS WITH h AS (SELECT cohort, period, CAST(churned AS REAL) / at_risk AS hazard
FROM cohort_periods) SELECT cohort, period, hazard, ROUND(EXP(SUM(LN(1.0 - hazard)) OVER (PARTITION BY cohort ORDER BY period)), 6) AS survival_prob
FROM h;
INSERT OR IGNORE INTO cohort_churn_survival_meta VALUES ('module', 'cohort_churn_survival');
