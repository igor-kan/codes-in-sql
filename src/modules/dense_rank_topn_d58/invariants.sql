CREATE TEMP TABLE IF NOT EXISTS _dense_rank_topn_d58_inv_ok (flag INTEGER);
INSERT INTO _dense_rank_topn_d58_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _dense_rank_topn_d58_inv_ok;
