WITH RECURSIVE gen(i) AS (
    SELECT 1 UNION ALL SELECT i + 1 FROM gen WHERE i < 40
)
INSERT INTO click_events (event_id, user_id, event_ts, page_path)
SELECT 1000 + i, (i % 4) + 1, i * 1000, '/step/' || i FROM gen;

DELETE FROM session_summary;
INSERT INTO session_summary
SELECT user_id, session_seq, start_ts, end_ts, event_count FROM v_session_aggregates;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'event_conservation_prop',
       CASE WHEN (SELECT SUM(event_count) FROM session_summary) = (SELECT COUNT(*) FROM click_events)
       THEN 1 ELSE 0 END;
