CREATE TABLE items (idx INTEGER PRIMARY KEY,
    wt INTEGER NOT NULL CHECK(wt > 0),
    val INTEGER NOT NULL CHECK(val > 0));
CREATE TABLE knap_cfg (cap INTEGER NOT NULL CHECK(cap > 0));
CREATE TABLE IF NOT EXISTS knapsack_dp_tabular_sql_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
