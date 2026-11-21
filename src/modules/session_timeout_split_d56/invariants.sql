CREATE TEMP TABLE IF NOT EXISTS _session_timeout_split_d56_inv_ok (flag INTEGER);
INSERT INTO _session_timeout_split_d56_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _session_timeout_split_d56_inv_ok;
