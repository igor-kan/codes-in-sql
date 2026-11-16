CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    signup_month INTEGER NOT NULL CHECK (signup_month >= 0)
);

CREATE TABLE user_activity (
    user_id INTEGER NOT NULL REFERENCES users(user_id),
    active_month INTEGER NOT NULL CHECK (active_month >= 0),
    PRIMARY KEY (user_id, active_month)
);

CREATE TABLE cohort_summary (
    cohort_month INTEGER PRIMARY KEY,
    cohort_size INTEGER NOT NULL,
    m0_users INTEGER NOT NULL,
    m1_users INTEGER NOT NULL,
    m2_users INTEGER NOT NULL
);
