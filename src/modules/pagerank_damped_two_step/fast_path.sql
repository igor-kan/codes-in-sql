CREATE INDEX IF NOT EXISTS idx_pagerank_damped_two_step_runs_ok ON pagerank_damped_two_step_runs(ok);
SELECT COUNT(*) AS run_count
FROM pagerank_damped_two_step_runs
WHERE ok = 1;
