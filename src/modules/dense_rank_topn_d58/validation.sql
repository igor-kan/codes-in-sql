INSERT INTO dense_rank_topn_d58_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM dense_rank_topn_d58_runs
WHERE ok = 1;
