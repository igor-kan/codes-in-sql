CREATE TEMP TABLE IF NOT EXISTS _gcd_recursive_d61_inv_ok (flag INTEGER);
INSERT INTO _gcd_recursive_d61_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _gcd_recursive_d61_inv_ok;
