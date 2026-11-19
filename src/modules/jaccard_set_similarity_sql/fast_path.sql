CREATE INDEX IF NOT EXISTS idx_jaccard_set_similarity_sql_runs_ok ON jaccard_set_similarity_sql_runs(ok);
SELECT COUNT(*) AS run_count
FROM jaccard_set_similarity_sql_runs
WHERE ok = 1;
