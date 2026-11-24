INSERT INTO moving_sum_budget_d59_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM moving_sum_budget_d59_runs
WHERE ok = 1;
