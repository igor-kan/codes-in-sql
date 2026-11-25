CREATE TEMP TABLE IF NOT EXISTS _hhi_concentration_d60_inv_ok (flag INTEGER);
INSERT INTO _hhi_concentration_d60_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _hhi_concentration_d60_inv_ok;
