CREATE TABLE graph_edges (src TEXT NOT NULL,
    dst TEXT NOT NULL,
    PRIMARY KEY (src,
    dst));
CREATE INDEX idx_edges_dst ON graph_edges(dst);
CREATE TABLE IF NOT EXISTS adjacency_transitive_reach_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
