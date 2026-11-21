CREATE TABLE d56_org (emp TEXT PRIMARY KEY,
    mgr TEXT);
CREATE TABLE IF NOT EXISTS dag_closure_cte_d56_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
