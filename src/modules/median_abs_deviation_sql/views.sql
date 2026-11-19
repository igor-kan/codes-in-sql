CREATE VIEW v_mad_stats AS WITH ord AS (SELECT metric, x, ROW_NUMBER() OVER (PARTITION BY metric ORDER BY x) AS rn, COUNT(*) OVER (PARTITION BY metric) AS n
FROM telemetry), med AS (SELECT metric, AVG(x) AS m
FROM ord
WHERE rn IN ((n + 1)/2, (n + 2)/2) GROUP BY metric), devs AS (SELECT o.metric, ABS(o.x - m.m) AS d, ROW_NUMBER() OVER (PARTITION BY o.metric ORDER BY ABS(o.x - m.m)) AS rn, o.n
FROM ord o JOIN med m ON o.metric=m.metric) SELECT metric, AVG(d) AS mad
FROM devs
WHERE rn IN ((n + 1)/2, (n + 2)/2) GROUP BY metric;
INSERT OR IGNORE INTO median_abs_deviation_sql_meta VALUES ('module', 'median_abs_deviation_sql');
