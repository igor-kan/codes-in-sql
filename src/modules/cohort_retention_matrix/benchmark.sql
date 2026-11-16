EXPLAIN QUERY PLAN
SELECT cohort_month, m0_pct, m1_pct, m2_pct FROM v_retention_rates;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'cohort_bench_nonempty', CASE WHEN COUNT(*) >= 35 THEN 1 ELSE 0 END FROM users;
