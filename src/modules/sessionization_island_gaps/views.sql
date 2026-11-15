CREATE VIEW v_user_event_gaps AS
SELECT
    event_id,
    user_id,
    event_ts,
    LAG(event_ts) OVER (PARTITION BY user_id ORDER BY event_ts, event_id) AS prev_ts
FROM click_events;
