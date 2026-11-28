CREATE TABLE d61_gcd_pairs (pair_id INTEGER PRIMARY KEY, a INTEGER NOT NULL CHECK(a >= 0), b INTEGER NOT NULL CHECK(b >= 0));
CREATE INDEX idx_d61_gcd_pairs ON d61_gcd_pairs(pair_id);
CREATE TABLE IF NOT EXISTS gcd_recursive_d61_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
