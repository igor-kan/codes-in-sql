CREATE VIEW v_d60_sessions AS WITH g AS (SELECT uid, ts, CASE WHEN ts - LAG(ts, 1, ts) OVER (PARTITION BY uid ORDER BY ts) > 300 THEN 1 ELSE 0 END AS is_new
FROM d60_click_ev), s AS (SELECT uid, ts, SUM(is_new) OVER (PARTITION BY uid ORDER BY ts) + 1 AS sess_id
FROM g) SELECT uid, COUNT(DISTINCT sess_id) AS n_sessions
FROM s
GROUP BY uid;
INSERT OR IGNORE INTO session_islands_d60_meta VALUES ('module', 'session_islands_d60');
