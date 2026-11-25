CREATE TABLE d60_click_ev (uid INTEGER NOT NULL, ts INTEGER NOT NULL, PRIMARY KEY(uid, ts));
CREATE TABLE IF NOT EXISTS session_islands_d60_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
