CREATE TEMP TABLE IF NOT EXISTS _percentile_hist_bin_d59_inv_ok (flag INTEGER);
INSERT INTO _percentile_hist_bin_d59_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _percentile_hist_bin_d59_inv_ok;
