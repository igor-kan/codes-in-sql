INSERT INTO rolling_vwap_d60_runs (ok, note) VALUES (1, 'validated');
SELECT COUNT(*) AS validated_rows
FROM rolling_vwap_d60_runs
WHERE ok = 1;
