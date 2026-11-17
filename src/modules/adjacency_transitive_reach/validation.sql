INSERT INTO adjacency_transitive_reach_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM adjacency_transitive_reach_runs
WHERE ok = 1;
