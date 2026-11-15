INSERT INTO session_summary (user_id, session_seq, start_ts, end_ts, event_count)
SELECT user_id, session_seq, start_ts, end_ts, event_count
FROM v_session_aggregates;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'session_bounds_valid',
       CASE WHEN COUNT(*) = 0 THEN 1 ELSE 0 END
FROM session_summary WHERE end_ts < start_ts OR session_seq < 1;
