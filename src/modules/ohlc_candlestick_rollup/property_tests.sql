CREATE TEMP TABLE _ohlc_candlestick_rollup_prop(flag INTEGER);
CREATE TEMP TRIGGER _ohlc_candlestick_rollup_prop_trg BEFORE INSERT ON _ohlc_candlestick_rollup_prop
BEGIN SELECT CASE WHEN NOT ((SELECT vol FROM v_ohlc WHERE bucket=1) = 50) THEN RAISE(ABORT, 'property assertion failed for ohlc_candlestick_rollup') END; END;
INSERT INTO _ohlc_candlestick_rollup_prop VALUES (1);
