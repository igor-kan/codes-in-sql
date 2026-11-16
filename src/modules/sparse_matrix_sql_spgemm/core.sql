CREATE VIEW v_spgemm_ba AS
SELECT
    b.k AS row_idx,
    a.k AS col_idx,
    SUM(b.v * a.v) AS val
FROM mat_b b
JOIN mat_a a ON b.j = a.i
GROUP BY b.k, a.k
HAVING ABS(SUM(b.v * a.v)) > 1e-12;

CREATE VIEW v_trace_compare AS
SELECT
    COALESCE((SELECT SUM(val) FROM v_spgemm_ab WHERE row_idx = col_idx), 0.0) AS tr_ab,
    COALESCE((SELECT SUM(val) FROM v_spgemm_ba WHERE row_idx = col_idx), 0.0) AS tr_ba;
