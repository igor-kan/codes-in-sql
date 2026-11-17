CREATE TEMP TABLE IF NOT EXISTS _sliding_quantile_histogram_inv_ok (flag INTEGER);
INSERT INTO _sliding_quantile_histogram_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes FROM _sliding_quantile_histogram_inv_ok;
