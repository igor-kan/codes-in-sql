CREATE TABLE d56_cohort_evt (uid INTEGER NOT NULL,
    mo INTEGER NOT NULL CHECK(mo >= 0),
    PRIMARY KEY(uid,
    mo));
CREATE TABLE IF NOT EXISTS cohort_retention_matrix_d56_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
