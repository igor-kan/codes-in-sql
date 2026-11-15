CREATE INDEX idx_click_events_user_ts
ON click_events (user_id, event_ts, event_id);

CREATE VIEW v_session_aggregates AS
SELECT
    user_id,
    session_seq,
    MIN(event_ts) AS start_ts,
    MAX(event_ts) AS end_ts,
    COUNT(*) AS event_count
FROM v_sessionized_events
GROUP BY user_id, session_seq;
