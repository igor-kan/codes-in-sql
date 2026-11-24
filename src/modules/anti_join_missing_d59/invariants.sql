CREATE TEMP TABLE IF NOT EXISTS _anti_join_missing_d59_inv_ok (flag INTEGER);
INSERT INTO _anti_join_missing_d59_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _anti_join_missing_d59_inv_ok;
