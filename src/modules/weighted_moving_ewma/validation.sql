CREATE VIEW v_ewma_envelope_stats AS
SELECT
    m.series_id,
    MIN(m.obs) AS min_obs,
    MAX(m.obs) AS max_obs,
    MIN(e.ewma) AS min_ewma,
    MAX(e.ewma) AS max_ewma
FROM metric_ticks m
JOIN v_ewma_series e ON e.series_id = m.series_id AND e.seq_no = m.seq_no
GROUP BY m.series_id;
