CREATE TABLE metric_ticks (
    series_id INTEGER NOT NULL,
    seq_no INTEGER NOT NULL CHECK (seq_no >= 1),
    obs REAL NOT NULL,
    PRIMARY KEY (series_id, seq_no)
);

CREATE TABLE ewma_params (
    id INTEGER PRIMARY KEY CHECK (id = 1),
    alpha REAL NOT NULL CHECK (alpha > 0.0 AND alpha <= 1.0)
);
