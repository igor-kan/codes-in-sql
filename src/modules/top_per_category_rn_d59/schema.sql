CREATE TABLE d59_store_sku (store TEXT NOT NULL,
    sku TEXT NOT NULL,
    rev INTEGER NOT NULL);
CREATE TABLE IF NOT EXISTS top_per_category_rn_d59_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
