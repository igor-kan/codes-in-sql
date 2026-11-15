CREATE VIEW v_rolling_zscores AS
WITH stats AS (
    SELECT
        metric_id,
        ts,
        val,
        win_n,
        roll_mean,
        SQRT(MAX(0.0, COALESCE(roll_mean_sq - roll_mean * roll_mean, 0.0))) AS roll_std
    FROM v_trailing_moments
)
SELECT
    metric_id,
    ts,
    val,
    win_n,
    roll_mean,
    roll_std,
    CASE
        WHEN win_n >= 4 AND roll_std > 1e-9 THEN (val - roll_mean) / roll_std
        WHEN win_n >= 4 AND ABS(val - roll_mean) > 1e-6 THEN 99.0
        ELSE 0.0
    END AS z_score
FROM stats;
