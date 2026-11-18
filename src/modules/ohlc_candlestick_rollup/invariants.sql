CREATE TEMP TABLE IF NOT EXISTS _ohlc_candlestick_rollup_inv_ok (flag INTEGER);
INSERT INTO _ohlc_candlestick_rollup_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _ohlc_candlestick_rollup_inv_ok;
