INSERT INTO raw_intervals (interval_id, resource_id, start_ts, end_ts) VALUES
(1, 1, 10, 20), (2, 1, 15, 25), (3, 1, 25, 30),
(4, 1, 40, 50), (5, 1, 42, 48);

DELETE FROM merged_intervals;
INSERT INTO merged_intervals SELECT * FROM v_coalesced_islands;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'merged_two_disjoint_blocks',
       CASE WHEN (SELECT COUNT(*) FROM merged_intervals WHERE resource_id = 1) = 2 THEN 1 ELSE 0 END;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'merged_exact_covered_span',
       CASE WHEN (SELECT covered_span FROM v_total_merged_duration WHERE resource_id = 1) = 30 THEN 1 ELSE 0 END;
