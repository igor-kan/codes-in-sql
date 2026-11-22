INSERT INTO pivot_crosstab_sum_d57_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM pivot_crosstab_sum_d57_runs
WHERE ok = 1;
