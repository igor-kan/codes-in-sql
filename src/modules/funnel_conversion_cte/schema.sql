CREATE TABLE funnel_events (
    ev_id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    stage TEXT NOT NULL CHECK (stage IN ('view', 'cart', 'checkout', 'purchase')),
    ts INTEGER NOT NULL CHECK (ts >= 0)
);

CREATE TABLE funnel_stage_counts (
    stage_rank INTEGER PRIMARY KEY,
    stage_name TEXT NOT NULL,
    user_count INTEGER NOT NULL
);
