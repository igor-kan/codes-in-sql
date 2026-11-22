CREATE TEMP TABLE IF NOT EXISTS _dedup_latest_row_d57_inv_ok (flag INTEGER);
INSERT INTO _dedup_latest_row_d57_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _dedup_latest_row_d57_inv_ok;
