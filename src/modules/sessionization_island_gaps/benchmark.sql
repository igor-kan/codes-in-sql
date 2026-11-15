EXPLAIN QUERY PLAN
SELECT user_id, session_seq, COUNT(*), MAX(event_ts) - MIN(event_ts)
FROM v_sessionized_events
GROUP BY user_id, session_seq;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'bench_nonempty', CASE WHEN COUNT(*) >= 45 THEN 1 ELSE 0 END FROM click_events;
