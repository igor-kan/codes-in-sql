CREATE TABLE retention_policy (
    id INTEGER PRIMARY KEY CHECK (id = 1),
    min_cohort_size INTEGER NOT NULL CHECK (min_cohort_size >= 1)
);

INSERT INTO retention_policy (id, min_cohort_size) VALUES (1, 1);
