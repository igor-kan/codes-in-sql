CREATE TABLE d59_res (rid INTEGER PRIMARY KEY,
    room TEXT NOT NULL,
    st INTEGER NOT NULL,
    en INTEGER NOT NULL);
CREATE TABLE IF NOT EXISTS interval_overlap_sql_d59_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
