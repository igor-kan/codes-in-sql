CREATE TABLE customer_tier_scd2 (
    surrogate_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER NOT NULL,
    tier_code TEXT NOT NULL,
    valid_from INTEGER NOT NULL,
    valid_to INTEGER NOT NULL,
    is_current INTEGER NOT NULL CHECK (is_current IN (0, 1)),
    CHECK (valid_to > valid_from)
);

CREATE TABLE tier_change_feed (
    feed_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    new_tier TEXT NOT NULL,
    effective_ts INTEGER NOT NULL
);
