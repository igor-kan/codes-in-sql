CREATE TABLE telemetry (metric TEXT NOT NULL,
    x REAL NOT NULL);
CREATE TABLE IF NOT EXISTS median_abs_deviation_sql_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
