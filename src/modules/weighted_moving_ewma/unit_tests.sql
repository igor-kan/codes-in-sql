INSERT INTO metric_ticks (series_id, seq_no, obs) VALUES
(1, 1, 100.0), (1, 2, 104.0), (1, 3, 108.0), (1, 4, 100.0);

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'ewma_step2_exact',
       CASE WHEN ABS((SELECT ewma FROM v_ewma_series WHERE series_id = 1 AND seq_no = 2) - 101.0) < 1e-9
       THEN 1 ELSE 0 END;
