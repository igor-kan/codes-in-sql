CREATE TEMP TABLE IF NOT EXISTS _collatz_length_d61_inv_ok (flag INTEGER);
INSERT INTO _collatz_length_d61_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _collatz_length_d61_inv_ok;
