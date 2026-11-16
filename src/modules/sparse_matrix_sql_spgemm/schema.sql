CREATE TABLE mat_a (
    i INTEGER NOT NULL CHECK (i >= 0),
    k INTEGER NOT NULL CHECK (k >= 0),
    v REAL NOT NULL,
    PRIMARY KEY (i, k)
);

CREATE TABLE mat_b (
    k INTEGER NOT NULL CHECK (k >= 0),
    j INTEGER NOT NULL CHECK (j >= 0),
    v REAL NOT NULL,
    PRIMARY KEY (k, j)
);
