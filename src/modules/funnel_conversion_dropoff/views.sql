CREATE VIEW v_funnel_summary AS SELECT COUNT(DISTINCT e1.uid) AS s1_cnt, COUNT(DISTINCT e2.uid) AS s2_cnt, COUNT(DISTINCT e3.uid) AS s3_cnt
FROM funnel_events e1 LEFT JOIN funnel_events e2 ON e1.uid=e2.uid AND e2.stage=2 AND e2.ts>=e1.ts LEFT JOIN funnel_events e3 ON e2.uid=e3.uid AND e3.stage=3 AND e3.ts>=e2.ts
WHERE e1.stage=1;
INSERT OR IGNORE INTO funnel_conversion_dropoff_meta VALUES ('module', 'funnel_conversion_dropoff');
