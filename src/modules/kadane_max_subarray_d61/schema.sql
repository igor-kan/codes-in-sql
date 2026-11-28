CREATE TABLE d61_kad_prices (seq INTEGER PRIMARY KEY, delta INTEGER NOT NULL);
CREATE INDEX idx_d61_kad_seq ON d61_kad_prices(seq);
CREATE TABLE IF NOT EXISTS kadane_max_subarray_d61_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
