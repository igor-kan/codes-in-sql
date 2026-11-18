CREATE TABLE pr_nodes (nid INTEGER PRIMARY KEY);
CREATE TABLE pr_edges (src INTEGER NOT NULL,
    dst INTEGER NOT NULL,
    PRIMARY KEY(src,
    dst));
CREATE TABLE IF NOT EXISTS pagerank_damped_two_step_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
