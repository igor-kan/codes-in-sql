CREATE TABLE d58_emp (eid INTEGER PRIMARY KEY,
    dept TEXT NOT NULL,
    sal INTEGER NOT NULL);
CREATE TABLE IF NOT EXISTS dense_rank_topn_d58_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
