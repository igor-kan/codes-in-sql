CREATE VIEW v_coalesced_islands AS
WITH boundaries AS (
    SELECT
        resource_id,
        start_ts,
        end_ts,
        CASE WHEN prev_max_end IS NULL OR start_ts > prev_max_end THEN 1 ELSE 0 END AS is_new_island
    FROM v_ordered_intervals
),
grouped AS (
    SELECT
        resource_id,
        start_ts,
        end_ts,
        SUM(is_new_island) OVER (
            PARTITION BY resource_id
            ORDER BY start_ts, end_ts
            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        ) AS island_id
    FROM boundaries
)
SELECT
    resource_id,
    island_id,
    MIN(start_ts) AS merged_start,
    MAX(end_ts) AS merged_end
FROM grouped
GROUP BY resource_id, island_id;
