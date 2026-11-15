CREATE VIEW v_trailing_moments AS
SELECT
    metric_id,
    ts,
    val,
    COUNT(*) OVER w AS win_n,
    AVG(val) OVER w AS roll_mean,
    AVG(val * val) OVER w AS roll_mean_sq
FROM metric_stream
WINDOW w AS (PARTITION BY metric_id ORDER BY ts ROWS BETWEEN 7 PRECEDING AND 1 PRECEDING);
