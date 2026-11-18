INSERT INTO trades VALUES (1,1,100.0,10),(1,2,108.0,20),(1,3,95.0,15),(1,4,104.0,5);
CREATE TEMP TABLE _ohlc_candlestick_rollup_chk(flag INTEGER);
CREATE TEMP TRIGGER _ohlc_candlestick_rollup_chk_trg BEFORE INSERT ON _ohlc_candlestick_rollup_chk
BEGIN SELECT CASE WHEN NOT ((SELECT open_px FROM v_ohlc WHERE bucket=1) = 100.0 AND (SELECT high_px FROM v_ohlc WHERE bucket=1) = 108.0 AND (SELECT low_px FROM v_ohlc WHERE bucket=1) = 95.0 AND (SELECT close_px FROM v_ohlc WHERE bucket=1) = 104.0) THEN RAISE(ABORT, 'unit assertion failed for ohlc_candlestick_rollup') END; END;
INSERT INTO _ohlc_candlestick_rollup_chk VALUES (1);
