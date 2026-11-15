CREATE VIEW v_sessionized_events AS
WITH flagged AS (
    SELECT
        event_id,
        user_id,
        event_ts,
        CASE
            WHEN prev_ts IS NULL OR (event_ts - prev_ts) > 1800 THEN 1
            ELSE 0
        END AS is_new_session
    FROM v_user_event_gaps
)
SELECT
    event_id,
    user_id,
    event_ts,
    SUM(is_new_session) OVER (
        PARTITION BY user_id
        ORDER BY event_ts, event_id
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS session_seq
FROM flagged;
