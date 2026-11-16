WITH RECURSIVE g(i) AS (SELECT 1 UNION ALL SELECT i + 1 FROM g WHERE i < 40)
INSERT INTO metric_ticks (series_id, seq_no, obs)
SELECT 2, i, 50.0 + (i % 7) * 3.0 FROM g;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'ewma_step_count_complete',
       CASE WHEN (SELECT COUNT(*) FROM v_ewma_series WHERE series_id = 2) = 40 THEN 1 ELSE 0 END;
