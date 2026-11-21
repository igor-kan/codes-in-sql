CREATE TABLE d56_ts_metric (day_seq INTEGER PRIMARY KEY,
    val REAL NOT NULL);
CREATE TABLE IF NOT EXISTS rolling_7d_window_avg_d56_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
