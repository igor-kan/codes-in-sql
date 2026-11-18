BEGIN IMMEDIATE;
INSERT INTO ohlc_candlestick_rollup_runs (ok, note) VALUES (1, 'tx_update');
UPDATE ohlc_candlestick_rollup_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
