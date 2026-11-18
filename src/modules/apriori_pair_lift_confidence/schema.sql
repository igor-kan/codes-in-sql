CREATE TABLE basket_items (tx_id INTEGER NOT NULL,
    item TEXT NOT NULL,
    PRIMARY KEY(tx_id,
    item));
CREATE TABLE IF NOT EXISTS apriori_pair_lift_confidence_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
