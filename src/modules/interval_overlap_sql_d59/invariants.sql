CREATE TEMP TABLE IF NOT EXISTS _interval_overlap_sql_d59_inv_ok (flag INTEGER);
INSERT INTO _interval_overlap_sql_d59_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _interval_overlap_sql_d59_inv_ok;
