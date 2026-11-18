CREATE VIEW v_ohlc AS WITH w AS (SELECT bucket, px, qty, FIRST_VALUE(px) OVER (PARTITION BY bucket ORDER BY seq) AS o, LAST_VALUE(px) OVER (PARTITION BY bucket ORDER BY seq ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS c
FROM trades) SELECT bucket, MIN(o) AS open_px, MAX(px) AS high_px, MIN(px) AS low_px, MIN(c) AS close_px, SUM(qty) AS vol
FROM w GROUP BY bucket;
INSERT OR IGNORE INTO ohlc_candlestick_rollup_meta VALUES ('module', 'ohlc_candlestick_rollup');
