CREATE TABLE d57_ticks (t INTEGER PRIMARY KEY,
    price INTEGER NOT NULL);
CREATE TABLE IF NOT EXISTS moving_median_win_d57_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
