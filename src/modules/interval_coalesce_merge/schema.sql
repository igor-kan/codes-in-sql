CREATE TABLE raw_intervals (
    interval_id INTEGER PRIMARY KEY,
    resource_id INTEGER NOT NULL,
    start_ts INTEGER NOT NULL,
    end_ts INTEGER NOT NULL,
    CHECK (end_ts >= start_ts)
);

CREATE TABLE merged_intervals (
    resource_id INTEGER NOT NULL,
    island_id INTEGER NOT NULL,
    merged_start INTEGER NOT NULL,
    merged_end INTEGER NOT NULL,
    PRIMARY KEY (resource_id, island_id)
);
