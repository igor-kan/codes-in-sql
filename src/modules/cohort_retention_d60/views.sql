CREATE VIEW v_d60_cohort_ret AS SELECT u.cohort_m, COUNT(DISTINCT u.uid) AS m0_users, COUNT(DISTINCT CASE WHEN a.act_m = u.cohort_m + 1 THEN u.uid END) AS m1_users
FROM d60_cohort_users u LEFT JOIN d60_cohort_act a ON u.uid = a.uid
GROUP BY u.cohort_m;
INSERT OR IGNORE INTO cohort_retention_d60_meta VALUES ('module', 'cohort_retention_d60');
