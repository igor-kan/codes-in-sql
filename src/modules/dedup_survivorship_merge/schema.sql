CREATE TABLE raw_profiles (entity_id INTEGER NOT NULL,
    src_rank INTEGER NOT NULL,
    email TEXT,
    phone TEXT,
    updated_at INTEGER NOT NULL);
CREATE INDEX idx_raw_ent ON raw_profiles(entity_id,
    src_rank);
CREATE TABLE IF NOT EXISTS dedup_survivorship_merge_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
