CREATE INDEX IF NOT EXISTS idx_first_last_touch_attr_d61_runs_ok ON first_last_touch_attr_d61_runs(ok);
SELECT COUNT(*) AS run_count
FROM first_last_touch_attr_d61_runs
WHERE ok = 1;
