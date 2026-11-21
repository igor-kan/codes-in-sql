CREATE VIEW v_d56_cohort_ret AS WITH base AS (SELECT uid, MIN(mo) AS c0
FROM d56_cohort_evt GROUP BY uid) SELECT b.c0 AS cohort_mo, e.mo - b.c0 AS delta_mo, COUNT(DISTINCT e.uid) AS active_cnt
FROM base b JOIN d56_cohort_evt e ON b.uid = e.uid GROUP BY b.c0, e.mo - b.c0;
INSERT OR IGNORE INTO cohort_retention_matrix_d56_meta VALUES ('module', 'cohort_retention_matrix_d56');
