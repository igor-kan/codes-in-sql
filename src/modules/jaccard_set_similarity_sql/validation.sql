INSERT INTO jaccard_set_similarity_sql_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM jaccard_set_similarity_sql_runs
WHERE ok = 1;
