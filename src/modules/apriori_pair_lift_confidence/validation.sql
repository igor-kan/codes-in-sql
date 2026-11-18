INSERT INTO apriori_pair_lift_confidence_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM apriori_pair_lift_confidence_runs
WHERE ok = 1;
