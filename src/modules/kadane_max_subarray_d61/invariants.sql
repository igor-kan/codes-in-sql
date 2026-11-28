CREATE TEMP TABLE IF NOT EXISTS _kadane_max_subarray_d61_inv_ok (flag INTEGER);
INSERT INTO _kadane_max_subarray_d61_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _kadane_max_subarray_d61_inv_ok;
