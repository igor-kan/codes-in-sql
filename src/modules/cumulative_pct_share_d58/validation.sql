INSERT INTO cumulative_pct_share_d58_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM cumulative_pct_share_d58_runs
WHERE ok = 1;
