CREATE TABLE session_config (
    id INTEGER PRIMARY KEY CHECK (id = 1),
    idle_gap_sec INTEGER NOT NULL CHECK (idle_gap_sec > 0),
    version INTEGER NOT NULL DEFAULT 1
);

INSERT INTO session_config (id, idle_gap_sec, version) VALUES (1, 1800, 1);
