CREATE TABLE d56_clicks (uid INTEGER NOT NULL,
    ts INTEGER NOT NULL);
CREATE TABLE IF NOT EXISTS session_timeout_split_d56_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
