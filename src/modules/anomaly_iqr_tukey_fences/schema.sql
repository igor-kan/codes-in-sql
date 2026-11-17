CREATE TABLE sensor_vals (sensor TEXT NOT NULL,
    v REAL NOT NULL);
CREATE INDEX idx_sensor ON sensor_vals(sensor,
    v);
CREATE TABLE IF NOT EXISTS anomaly_iqr_tukey_fences_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
