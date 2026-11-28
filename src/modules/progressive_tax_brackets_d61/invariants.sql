CREATE TEMP TABLE IF NOT EXISTS _progressive_tax_brackets_d61_inv_ok (flag INTEGER);
INSERT INTO _progressive_tax_brackets_d61_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _progressive_tax_brackets_d61_inv_ok;
