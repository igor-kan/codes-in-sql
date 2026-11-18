CREATE TABLE wealth_obs (person_id INTEGER PRIMARY KEY,
    wealth REAL NOT NULL CHECK(wealth >= 0));
CREATE TABLE IF NOT EXISTS gini_lorenz_inequality_sql_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
