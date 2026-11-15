CREATE TABLE click_events (
    event_id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL CHECK (user_id > 0),
    event_ts INTEGER NOT NULL CHECK (event_ts >= 0),
    page_path TEXT NOT NULL
);

CREATE TABLE session_summary (
    user_id INTEGER NOT NULL,
    session_seq INTEGER NOT NULL,
    start_ts INTEGER NOT NULL,
    end_ts INTEGER NOT NULL,
    event_count INTEGER NOT NULL,
    PRIMARY KEY (user_id, session_seq)
);
