CREATE VIEW v_d57_pivot AS SELECT region, SUM(CASE WHEN chan='web' THEN rev ELSE 0 END) AS web_rev, SUM(CASE WHEN chan='app' THEN rev ELSE 0 END) AS app_rev
FROM d57_sales GROUP BY region;
INSERT OR IGNORE INTO pivot_crosstab_sum_d57_meta VALUES ('module', 'pivot_crosstab_sum_d57');
