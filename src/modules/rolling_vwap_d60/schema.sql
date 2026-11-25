CREATE TABLE d60_ticks (sym TEXT NOT NULL, seq INTEGER NOT NULL, price REAL NOT NULL, vol REAL NOT NULL CHECK(vol > 0), PRIMARY KEY(sym, seq));
CREATE TABLE IF NOT EXISTS rolling_vwap_d60_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
