CREATE INDEX idx_mat_a_k ON mat_a (k, i, v);
CREATE INDEX idx_mat_b_k ON mat_b (k, j, v);

CREATE VIEW v_spgemm_row_norms AS
SELECT row_idx, SUM(val * val) AS row_sq_norm, COUNT(*) AS nnz_row
FROM v_spgemm_ab
GROUP BY row_idx;
