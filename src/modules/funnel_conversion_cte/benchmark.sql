EXPLAIN QUERY PLAN
SELECT * FROM v_ordered_funnel;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'funnel_event_volume', CASE WHEN COUNT(*) >= 40 THEN 1 ELSE 0 END FROM funnel_events;
