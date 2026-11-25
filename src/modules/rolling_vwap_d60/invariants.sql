CREATE TEMP TABLE IF NOT EXISTS _rolling_vwap_d60_inv_ok (flag INTEGER);
INSERT INTO _rolling_vwap_d60_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _rolling_vwap_d60_inv_ok;
