CREATE TABLE graph_guard (
    id INTEGER PRIMARY KEY CHECK (id = 1),
    max_depth INTEGER NOT NULL CHECK (max_depth BETWEEN 1 AND 256),
    version INTEGER NOT NULL DEFAULT 1
);

INSERT INTO graph_guard (id, max_depth, version) VALUES (1, 32, 1);
