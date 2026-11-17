CREATE TABLE metrics (grp TEXT NOT NULL,
    val REAL NOT NULL CHECK(val >= 0));
CREATE INDEX idx_metrics_grp ON metrics(grp,
    val);
CREATE TABLE IF NOT EXISTS sliding_quantile_histogram_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
