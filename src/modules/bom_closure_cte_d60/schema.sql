CREATE TABLE d60_bom_edges (parent TEXT NOT NULL, child TEXT NOT NULL, qty INTEGER NOT NULL, unit_cost REAL NOT NULL, PRIMARY KEY(parent, child));
CREATE TABLE IF NOT EXISTS bom_closure_cte_d60_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
