CREATE INDEX IF NOT EXISTS idx_apriori_pair_lift_confidence_runs_ok ON apriori_pair_lift_confidence_runs(ok);
SELECT COUNT(*) AS run_count
FROM apriori_pair_lift_confidence_runs
WHERE ok = 1;
