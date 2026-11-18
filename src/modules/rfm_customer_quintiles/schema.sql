CREATE TABLE cust_orders (cid TEXT NOT NULL,
    order_day INTEGER NOT NULL,
    amount REAL NOT NULL CHECK(amount > 0));
CREATE TABLE IF NOT EXISTS rfm_customer_quintiles_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
