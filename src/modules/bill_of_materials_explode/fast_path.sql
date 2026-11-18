CREATE INDEX IF NOT EXISTS idx_bill_of_materials_explode_runs_ok ON bill_of_materials_explode_runs(ok);
SELECT COUNT(*) AS run_count
FROM bill_of_materials_explode_runs
WHERE ok = 1;
