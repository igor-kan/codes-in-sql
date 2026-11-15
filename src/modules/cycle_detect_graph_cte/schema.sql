CREATE TABLE dag_edges (
    src INTEGER NOT NULL CHECK (src >= 0),
    dst INTEGER NOT NULL CHECK (dst >= 0),
    PRIMARY KEY (src, dst)
);

CREATE TABLE detected_cycles (
    start_node INTEGER NOT NULL,
    cycle_path TEXT NOT NULL
);
