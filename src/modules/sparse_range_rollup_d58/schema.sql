CREATE TABLE d58_tickets (tid INTEGER PRIMARY KEY,
    amt INTEGER NOT NULL);
CREATE TABLE IF NOT EXISTS sparse_range_rollup_d58_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
