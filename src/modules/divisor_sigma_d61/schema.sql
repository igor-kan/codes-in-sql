CREATE TABLE d61_sigma_inputs (num_id INTEGER PRIMARY KEY, n INTEGER NOT NULL CHECK(n >= 1));
CREATE INDEX idx_d61_sigma_inputs ON d61_sigma_inputs(n);
CREATE TABLE IF NOT EXISTS divisor_sigma_d61_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
