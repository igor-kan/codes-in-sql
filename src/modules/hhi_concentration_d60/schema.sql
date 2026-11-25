CREATE TABLE d60_mkt_rev (sector TEXT NOT NULL, firm TEXT NOT NULL, rev REAL NOT NULL CHECK(rev > 0), PRIMARY KEY(sector, firm));
CREATE TABLE IF NOT EXISTS hhi_concentration_d60_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
