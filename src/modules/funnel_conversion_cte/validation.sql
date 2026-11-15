CREATE TABLE funnel_meta (
    id INTEGER PRIMARY KEY CHECK (id = 1),
    stage_count INTEGER NOT NULL CHECK (stage_count = 4),
    version INTEGER NOT NULL DEFAULT 1
);

INSERT INTO funnel_meta (id, stage_count, version) VALUES (1, 4, 1);
