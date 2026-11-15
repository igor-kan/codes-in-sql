CREATE VIEW v_ordered_intervals AS
SELECT
    interval_id,
    resource_id,
    start_ts,
    end_ts,
    MAX(end_ts) OVER (
        PARTITION BY resource_id
        ORDER BY start_ts, end_ts, interval_id
        ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING
    ) AS prev_max_end
FROM raw_intervals;
