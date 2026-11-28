INSERT INTO progressive_tax_brackets_d61_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM progressive_tax_brackets_d61_runs
WHERE ok = 1;
