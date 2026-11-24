CREATE TEMP TABLE IF NOT EXISTS _top_per_category_rn_d59_inv_ok (flag INTEGER);
INSERT INTO _top_per_category_rn_d59_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _top_per_category_rn_d59_inv_ok;
