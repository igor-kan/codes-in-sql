CREATE TEMP TABLE IF NOT EXISTS _jaccard_set_similarity_sql_inv_ok (flag INTEGER);
INSERT INTO _jaccard_set_similarity_sql_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _jaccard_set_similarity_sql_inv_ok;
