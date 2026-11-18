INSERT INTO ohlc_candlestick_rollup_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM ohlc_candlestick_rollup_runs
WHERE ok = 1;
