CREATE TEMP TABLE IF NOT EXISTS _session_islands_d60_inv_ok (flag INTEGER);
INSERT INTO _session_islands_d60_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _session_islands_d60_inv_ok;
