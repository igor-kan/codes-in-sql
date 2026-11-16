CREATE TABLE basket_thresholds (
    id INTEGER PRIMARY KEY CHECK (id = 1),
    min_pair_orders INTEGER NOT NULL CHECK (min_pair_orders >= 1)
);

INSERT INTO basket_thresholds (id, min_pair_orders) VALUES (1, 1);
