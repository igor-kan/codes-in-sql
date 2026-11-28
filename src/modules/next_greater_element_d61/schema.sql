CREATE TABLE d61_series (seq INTEGER PRIMARY KEY, val INTEGER NOT NULL);
CREATE INDEX idx_d61_series_val ON d61_series(val);
CREATE TABLE IF NOT EXISTS next_greater_element_d61_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
