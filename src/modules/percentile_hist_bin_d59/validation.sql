INSERT INTO percentile_hist_bin_d59_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM percentile_hist_bin_d59_runs
WHERE ok = 1;
