INSERT INTO sliding_quantile_histogram_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM sliding_quantile_histogram_runs
WHERE ok = 1;
