CREATE TABLE inventory_lots (
    lot_id INTEGER PRIMARY KEY,
    sku TEXT NOT NULL,
    lot_seq INTEGER NOT NULL,
    qty INTEGER NOT NULL CHECK (qty > 0),
    unit_cost REAL NOT NULL CHECK (unit_cost >= 0.0)
);

CREATE TABLE sales_totals (
    sku TEXT PRIMARY KEY,
    sold_qty INTEGER NOT NULL CHECK (sold_qty >= 0)
);
