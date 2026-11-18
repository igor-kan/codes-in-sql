INSERT INTO funnel_conversion_dropoff_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM funnel_conversion_dropoff_runs
WHERE ok = 1;
