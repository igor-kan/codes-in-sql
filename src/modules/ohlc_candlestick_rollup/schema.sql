CREATE TABLE trades (bucket INTEGER NOT NULL,
    seq INTEGER NOT NULL,
    px REAL NOT NULL,
    qty INTEGER NOT NULL,
    PRIMARY KEY(bucket,
    seq));
CREATE TABLE IF NOT EXISTS ohlc_candlestick_rollup_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
