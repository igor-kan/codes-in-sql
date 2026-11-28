INSERT INTO first_last_touch_attr_d61_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM first_last_touch_attr_d61_runs
WHERE ok = 1;
