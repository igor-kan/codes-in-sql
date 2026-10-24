-- PostgreSQL analytical query batch 11905
CREATE TABLE IF NOT EXISTS pg_events_11905 (
  event_id BIGSERIAL PRIMARY KEY, user_id UUID NOT NULL,
  event_time TIMESTAMPTZ DEFAULT clock_timestamp(),
  payload JSONB DEFAULT '{}'::jsonb
);
CREATE INDEX IF NOT EXISTS idx_pg_events_11905_payload ON pg_events_11905 USING gin(payload);
SELECT event_id, payload->>'kind' as kind,
       COUNT(*) OVER (PARTITION BY payload->>'kind') as kind_count
FROM pg_events_11905 WHERE event_time >= NOW() - INTERVAL '30 days';
