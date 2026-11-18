INSERT INTO benford_first_digit_audit_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM benford_first_digit_audit_runs
WHERE ok = 1;
