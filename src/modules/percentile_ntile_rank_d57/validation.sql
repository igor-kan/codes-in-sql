INSERT INTO percentile_ntile_rank_d57_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM percentile_ntile_rank_d57_runs
WHERE ok = 1;
