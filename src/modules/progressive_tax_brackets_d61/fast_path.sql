CREATE INDEX IF NOT EXISTS idx_progressive_tax_brackets_d61_runs_ok ON progressive_tax_brackets_d61_runs(ok);
SELECT COUNT(*) AS run_count
FROM progressive_tax_brackets_d61_runs
WHERE ok = 1;
