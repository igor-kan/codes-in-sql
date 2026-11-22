CREATE TABLE d57_cdc (eid INTEGER NOT NULL,
    ver INTEGER NOT NULL,
    deleted INTEGER NOT NULL,
    state TEXT NOT NULL);
CREATE TABLE IF NOT EXISTS dedup_latest_row_d57_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
