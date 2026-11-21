CREATE TABLE d56_scd2 (eid INTEGER NOT NULL,
    valid_from INTEGER NOT NULL,
    valid_to INTEGER NOT NULL,
    tier TEXT NOT NULL);
CREATE TABLE IF NOT EXISTS scd_type2_effective_d56_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
