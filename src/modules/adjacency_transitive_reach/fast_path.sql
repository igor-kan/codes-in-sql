CREATE INDEX IF NOT EXISTS idx_adjacency_transitive_reach_runs_ok ON adjacency_transitive_reach_runs(ok);
SELECT COUNT(*) AS run_count
FROM adjacency_transitive_reach_runs
WHERE ok = 1;
