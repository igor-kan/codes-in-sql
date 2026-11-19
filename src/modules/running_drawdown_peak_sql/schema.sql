CREATE TABLE nav_curve (day_idx INTEGER PRIMARY KEY,
    nav REAL NOT NULL CHECK(nav > 0));
CREATE TABLE IF NOT EXISTS running_drawdown_peak_sql_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
