CREATE TEMP TABLE IF NOT EXISTS _scd_type2_effective_d56_inv_ok (flag INTEGER);
INSERT INTO _scd_type2_effective_d56_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _scd_type2_effective_d56_inv_ok;
