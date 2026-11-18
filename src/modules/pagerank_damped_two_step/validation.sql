INSERT INTO pagerank_damped_two_step_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM pagerank_damped_two_step_runs
WHERE ok = 1;
