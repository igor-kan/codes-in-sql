INSERT INTO ewma_params (id, alpha) VALUES (1, 0.25);

CREATE VIEW v_ewma_series AS
WITH RECURSIVE rec(series_id, seq_no, obs, ewma) AS (
    SELECT m.series_id, m.seq_no, m.obs, m.obs
    FROM metric_ticks m
    WHERE m.seq_no = 1
    UNION ALL
    SELECT m.series_id, m.seq_no, m.obs,
           (SELECT alpha FROM ewma_params WHERE id = 1) * m.obs +
           (1.0 - (SELECT alpha FROM ewma_params WHERE id = 1)) * r.ewma
    FROM metric_ticks m
    JOIN rec r ON m.series_id = r.series_id AND m.seq_no = r.seq_no + 1
)
SELECT series_id, seq_no, obs, ewma FROM rec;
