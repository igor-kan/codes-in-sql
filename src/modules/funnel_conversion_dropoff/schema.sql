CREATE TABLE funnel_events (uid INTEGER NOT NULL,
    stage INTEGER NOT NULL,
    ts INTEGER NOT NULL,
    PRIMARY KEY(uid,
    stage));
CREATE TABLE IF NOT EXISTS funnel_conversion_dropoff_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
