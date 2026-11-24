CREATE TABLE d59_exp (proj TEXT NOT NULL,
    seq INTEGER NOT NULL,
    amt INTEGER NOT NULL,
    cap INTEGER NOT NULL);
CREATE TABLE IF NOT EXISTS moving_sum_budget_d59_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
