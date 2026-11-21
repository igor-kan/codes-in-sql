CREATE INDEX IF NOT EXISTS idx_gaps_islands_streak_d56_runs_ok ON gaps_islands_streak_d56_runs(ok);
SELECT COUNT(*) AS run_count
FROM gaps_islands_streak_d56_runs
WHERE ok = 1;
