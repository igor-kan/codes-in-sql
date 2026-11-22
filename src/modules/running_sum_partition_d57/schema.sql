CREATE TABLE d57_tx (acct TEXT NOT NULL,
    seq INTEGER NOT NULL,
    amt INTEGER NOT NULL,
    PRIMARY KEY(acct,
    seq));
CREATE TABLE IF NOT EXISTS running_sum_partition_d57_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
