CREATE TABLE telemetry_samples (
    sample_id INTEGER PRIMARY KEY,
    service_name TEXT NOT NULL,
    latency_ms REAL NOT NULL CHECK (latency_ms >= 0.0)
);

CREATE TABLE service_quantile_summary (
    service_name TEXT PRIMARY KEY,
    n_samples INTEGER NOT NULL,
    p50_ms REAL NOT NULL,
    p90_ms REAL NOT NULL,
    p95_ms REAL NOT NULL
);
