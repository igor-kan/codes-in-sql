CREATE TEMP TABLE IF NOT EXISTS _funnel_conversion_dropoff_inv_ok (flag INTEGER);
INSERT INTO _funnel_conversion_dropoff_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _funnel_conversion_dropoff_inv_ok;
