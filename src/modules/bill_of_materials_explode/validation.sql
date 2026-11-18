INSERT INTO bill_of_materials_explode_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM bill_of_materials_explode_runs
WHERE ok = 1;
