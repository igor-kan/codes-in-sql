CREATE INDEX IF NOT EXISTS idx_rolling_vwap_d60_runs_ok ON rolling_vwap_d60_runs(ok);
SELECT COUNT(*) AS run_count
FROM rolling_vwap_d60_runs
WHERE ok = 1;
