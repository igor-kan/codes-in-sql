CREATE TABLE d57_orders (oid INTEGER PRIMARY KEY,
    cid INTEGER NOT NULL,
    day_num INTEGER NOT NULL,
    spend INTEGER NOT NULL);
CREATE TABLE IF NOT EXISTS rfm_customer_tier_d57_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
