CREATE INDEX IF NOT EXISTS idx_hhi_concentration_d60_runs_ok ON hhi_concentration_d60_runs(ok);
SELECT COUNT(*) AS run_count
FROM hhi_concentration_d60_runs
WHERE ok = 1;
