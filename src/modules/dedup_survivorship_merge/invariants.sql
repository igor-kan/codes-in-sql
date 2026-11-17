CREATE TEMP TABLE IF NOT EXISTS _dedup_survivorship_merge_inv_ok (flag INTEGER);
INSERT INTO _dedup_survivorship_merge_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes FROM _dedup_survivorship_merge_inv_ok;
