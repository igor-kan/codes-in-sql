CREATE INDEX IF NOT EXISTS idx_ohlc_candlestick_rollup_runs_ok ON ohlc_candlestick_rollup_runs(ok);
SELECT COUNT(*) AS run_count
FROM ohlc_candlestick_rollup_runs
WHERE ok = 1;
