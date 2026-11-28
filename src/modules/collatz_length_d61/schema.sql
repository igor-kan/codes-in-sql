CREATE TABLE d61_collatz_seeds (seed_id INTEGER PRIMARY KEY, n INTEGER NOT NULL CHECK(n >= 1));
CREATE INDEX idx_d61_collatz_seeds ON d61_collatz_seeds(n);
CREATE TABLE IF NOT EXISTS collatz_length_d61_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
