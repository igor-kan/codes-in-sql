INSERT INTO click_events (event_id, user_id, event_ts, page_path) VALUES
(1, 10, 100, '/home'),
(2, 10, 400, '/docs'),
(3, 10, 3000, '/home'),
(4, 10, 3500, '/pricing'),
(5, 20, 200, '/intro');

DELETE FROM session_summary;
INSERT INTO session_summary
SELECT user_id, session_seq, start_ts, end_ts, event_count FROM v_session_aggregates;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'u10_two_sessions',
       CASE WHEN (SELECT COUNT(*) FROM session_summary WHERE user_id = 10) = 2 THEN 1 ELSE 0 END;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'event_conservation_unit',
       CASE WHEN (SELECT COALESCE(SUM(event_count), 0) FROM session_summary) = 5 THEN 1 ELSE 0 END;
