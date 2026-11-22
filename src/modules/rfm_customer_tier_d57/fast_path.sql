CREATE INDEX IF NOT EXISTS idx_rfm_customer_tier_d57_runs_ok ON rfm_customer_tier_d57_runs(ok);
SELECT COUNT(*) AS run_count
FROM rfm_customer_tier_d57_runs
WHERE ok = 1;
