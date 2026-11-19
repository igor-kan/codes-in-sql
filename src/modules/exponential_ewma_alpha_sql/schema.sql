CREATE TABLE series_obs (t INTEGER PRIMARY KEY,
    x REAL NOT NULL);
CREATE TABLE ewma_cfg (alpha REAL NOT NULL CHECK(alpha > 0 AND alpha <= 1));
CREATE TABLE IF NOT EXISTS exponential_ewma_alpha_sql_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
