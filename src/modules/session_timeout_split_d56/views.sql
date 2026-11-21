CREATE VIEW v_d56_sessions AS WITH d AS (SELECT uid, ts, CASE WHEN ts - COALESCE(LAG(ts) OVER (PARTITION BY uid ORDER BY ts), ts) > 30 THEN 1 ELSE 0 END AS brk
FROM d56_clicks) SELECT uid, ts, 1 + SUM(brk) OVER (PARTITION BY uid ORDER BY ts) AS sess_id
FROM d;
INSERT OR IGNORE INTO session_timeout_split_d56_meta VALUES ('module', 'session_timeout_split_d56');
