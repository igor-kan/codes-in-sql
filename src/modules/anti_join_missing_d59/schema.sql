CREATE TABLE d59_manifest (mid INTEGER PRIMARY KEY); CREATE TABLE d59_shipped (mid INTEGER PRIMARY KEY);
CREATE TABLE IF NOT EXISTS anti_join_missing_d59_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
