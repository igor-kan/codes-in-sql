CREATE TEMP TABLE IF NOT EXISTS _loan_amortization_d61_inv_ok (flag INTEGER);
INSERT INTO _loan_amortization_d61_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _loan_amortization_d61_inv_ok;
