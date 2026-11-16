CREATE VIEW v_spgemm_ab AS
SELECT
    a.i AS row_idx,
    b.j AS col_idx,
    SUM(a.v * b.v) AS val
FROM mat_a a
JOIN mat_b b ON a.k = b.k
GROUP BY a.i, b.j
HAVING ABS(SUM(a.v * b.v)) > 1e-12;
