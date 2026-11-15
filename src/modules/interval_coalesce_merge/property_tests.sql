WITH RECURSIVE seq(k) AS (
    SELECT 1 UNION ALL SELECT k + 1 FROM seq WHERE k < 30
)
INSERT INTO raw_intervals (interval_id, resource_id, start_ts, end_ts)
SELECT 100 + k, 2, k * 5, k * 5 + 8 FROM seq;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'contiguous_chain_single_island',
       CASE WHEN (SELECT COUNT(*) FROM v_coalesced_islands WHERE resource_id = 2) = 1 THEN 1 ELSE 0 END;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'no_uncovered_prop_intervals',
       CASE WHEN (SELECT COUNT(*) FROM v_interval_coverage_check) = 0 THEN 1 ELSE 0 END;
