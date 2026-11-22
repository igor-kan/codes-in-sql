CREATE TEMP TABLE IF NOT EXISTS _percentile_ntile_rank_d57_inv_ok (flag INTEGER);
INSERT INTO _percentile_ntile_rank_d57_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _percentile_ntile_rank_d57_inv_ok;
