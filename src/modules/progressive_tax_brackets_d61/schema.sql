CREATE TABLE d61_tax_brackets (bracket_id INTEGER PRIMARY KEY, lower_bound INTEGER NOT NULL, upper_bound INTEGER NOT NULL, rate_bp INTEGER NOT NULL CHECK(rate_bp >= 0 AND rate_bp <= 10000), CHECK(upper_bound > lower_bound));
CREATE TABLE d61_taxpayer (tid INTEGER PRIMARY KEY, income INTEGER NOT NULL CHECK(income >= 0));
CREATE TABLE IF NOT EXISTS progressive_tax_brackets_d61_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
