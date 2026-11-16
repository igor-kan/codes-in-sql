CREATE TABLE order_items (
    order_id INTEGER NOT NULL,
    item_id INTEGER NOT NULL CHECK (item_id > 0),
    PRIMARY KEY (order_id, item_id)
);
