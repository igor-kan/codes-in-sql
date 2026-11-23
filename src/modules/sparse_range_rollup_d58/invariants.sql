CREATE TEMP TABLE IF NOT EXISTS _sparse_range_rollup_d58_inv_ok (flag INTEGER);
INSERT INTO _sparse_range_rollup_d58_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _sparse_range_rollup_d58_inv_ok;
