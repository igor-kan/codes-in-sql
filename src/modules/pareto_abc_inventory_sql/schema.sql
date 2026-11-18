CREATE TABLE sku_sales (sku TEXT PRIMARY KEY,
    rev REAL NOT NULL CHECK(rev > 0));
CREATE INDEX idx_sku_rev ON sku_sales(rev DESC);
CREATE TABLE IF NOT EXISTS pareto_abc_inventory_sql_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
