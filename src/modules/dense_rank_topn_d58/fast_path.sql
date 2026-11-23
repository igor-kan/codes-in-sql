CREATE INDEX IF NOT EXISTS idx_dense_rank_topn_d58_runs_ok ON dense_rank_topn_d58_runs(ok);
SELECT COUNT(*) AS run_count
FROM dense_rank_topn_d58_runs
WHERE ok = 1;
