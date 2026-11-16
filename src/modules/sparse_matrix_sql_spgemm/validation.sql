CREATE TABLE spgemm_tol (
    id INTEGER PRIMARY KEY CHECK (id = 1),
    drop_eps REAL NOT NULL CHECK (drop_eps > 0.0)
);

INSERT INTO spgemm_tol (id, drop_eps) VALUES (1, 1e-12);
