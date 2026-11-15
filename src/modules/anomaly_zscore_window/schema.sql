CREATE TABLE metric_stream (
    metric_id INTEGER NOT NULL,
    ts INTEGER NOT NULL,
    val REAL NOT NULL,
    PRIMARY KEY (metric_id, ts)
);

CREATE TABLE flagged_anomalies (
    metric_id INTEGER NOT NULL,
    ts INTEGER NOT NULL,
    z_score REAL NOT NULL,
    PRIMARY KEY (metric_id, ts)
);
