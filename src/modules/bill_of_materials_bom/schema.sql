CREATE TABLE parts_catalog (
    part_id INTEGER PRIMARY KEY,
    part_name TEXT NOT NULL,
    unit_price REAL NOT NULL CHECK (unit_price >= 0.0),
    is_leaf INTEGER NOT NULL CHECK (is_leaf IN (0, 1))
);

CREATE TABLE bom_edges (
    parent_id INTEGER NOT NULL REFERENCES parts_catalog(part_id),
    child_id INTEGER NOT NULL REFERENCES parts_catalog(part_id),
    qty_per_parent REAL NOT NULL CHECK (qty_per_parent > 0.0),
    PRIMARY KEY (parent_id, child_id),
    CHECK (parent_id <> child_id)
);
