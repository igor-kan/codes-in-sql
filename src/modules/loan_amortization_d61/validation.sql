INSERT INTO loan_amortization_d61_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM loan_amortization_d61_runs
WHERE ok = 1;
