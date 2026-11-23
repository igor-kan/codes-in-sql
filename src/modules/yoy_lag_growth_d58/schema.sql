CREATE TABLE d58_rev (qtr INTEGER PRIMARY KEY,
    rev INTEGER NOT NULL);
CREATE TABLE IF NOT EXISTS yoy_lag_growth_d58_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
