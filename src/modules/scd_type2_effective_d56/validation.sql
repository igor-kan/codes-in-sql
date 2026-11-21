INSERT INTO scd_type2_effective_d56_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM scd_type2_effective_d56_runs
WHERE ok = 1;
