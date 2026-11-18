CREATE TABLE ohlc_candlestick_rollup_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'ohlc_candlestick_rollup'
);
