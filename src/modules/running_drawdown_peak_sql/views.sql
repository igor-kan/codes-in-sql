CREATE VIEW v_drawdowns AS WITH pk AS (SELECT day_idx, nav, MAX(nav) OVER (ORDER BY day_idx ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS hwm
FROM nav_curve) SELECT day_idx, nav, hwm, ROUND((nav - hwm) / hwm, 6) AS drawdown
FROM pk;
INSERT OR IGNORE INTO running_drawdown_peak_sql_meta VALUES ('module', 'running_drawdown_peak_sql');
