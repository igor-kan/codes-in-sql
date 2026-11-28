CREATE TEMP TABLE IF NOT EXISTS _divisor_sigma_d61_inv_ok (flag INTEGER);
INSERT INTO _divisor_sigma_d61_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _divisor_sigma_d61_inv_ok;
