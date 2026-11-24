INSERT INTO top_per_category_rn_d59_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM top_per_category_rn_d59_runs
WHERE ok = 1;
