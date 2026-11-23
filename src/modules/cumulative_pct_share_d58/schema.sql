CREATE TABLE d58_sku (sku TEXT PRIMARY KEY,
    rev REAL NOT NULL);
CREATE TABLE IF NOT EXISTS cumulative_pct_share_d58_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
