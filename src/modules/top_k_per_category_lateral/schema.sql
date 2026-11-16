CREATE TABLE category_items (
    item_id INTEGER PRIMARY KEY,
    category_id INTEGER NOT NULL CHECK (category_id > 0),
    score INTEGER NOT NULL,
    updated_at INTEGER NOT NULL
);

CREATE TABLE topk_settings (
    id INTEGER PRIMARY KEY CHECK (id = 1),
    k INTEGER NOT NULL CHECK (k >= 1)
);
