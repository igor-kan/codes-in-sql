CREATE INDEX IF NOT EXISTS idx_next_greater_element_d61_runs_ok ON next_greater_element_d61_runs(ok);
SELECT COUNT(*) AS run_count
FROM next_greater_element_d61_runs
WHERE ok = 1;
