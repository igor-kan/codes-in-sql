EXPLAIN QUERY PLAN
SELECT row_idx, col_idx, val FROM v_spgemm_ab;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'spgemm_bench_ok', CASE WHEN (SELECT COUNT(*) FROM v_spgemm_ab) >= 22 THEN 1 ELSE 0 END;
