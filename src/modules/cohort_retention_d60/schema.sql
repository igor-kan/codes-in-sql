CREATE TABLE d60_cohort_users (uid INTEGER PRIMARY KEY, cohort_m INTEGER NOT NULL);
CREATE TABLE d60_cohort_act (uid INTEGER NOT NULL, act_m INTEGER NOT NULL, PRIMARY KEY(uid, act_m));
CREATE TABLE IF NOT EXISTS cohort_retention_d60_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
