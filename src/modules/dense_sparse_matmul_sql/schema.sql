CREATE TABLE mat_a (i INTEGER NOT NULL,
    k INTEGER NOT NULL,
    v REAL NOT NULL,
    PRIMARY KEY(i,
    k));
CREATE TABLE mat_b (k INTEGER NOT NULL,
    j INTEGER NOT NULL,
    v REAL NOT NULL,
    PRIMARY KEY(k,
    j));
CREATE TABLE IF NOT EXISTS dense_sparse_matmul_sql_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
