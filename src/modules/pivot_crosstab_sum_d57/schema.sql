CREATE TABLE d57_sales (region TEXT NOT NULL,
    chan TEXT NOT NULL,
    rev INTEGER NOT NULL);
CREATE TABLE IF NOT EXISTS pivot_crosstab_sum_d57_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
