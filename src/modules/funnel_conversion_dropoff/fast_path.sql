CREATE INDEX IF NOT EXISTS idx_funnel_conversion_dropoff_runs_ok ON funnel_conversion_dropoff_runs(ok);
SELECT COUNT(*) AS run_count
FROM funnel_conversion_dropoff_runs
WHERE ok = 1;
