CREATE TEMP TABLE _funnel_conversion_dropoff_prop(flag INTEGER);
CREATE TEMP TRIGGER _funnel_conversion_dropoff_prop_trg BEFORE INSERT ON _funnel_conversion_dropoff_prop
BEGIN SELECT CASE WHEN NOT ((SELECT s3_cnt <= s2_cnt AND s2_cnt <= s1_cnt FROM v_funnel_summary) = 1) THEN RAISE(ABORT, 'property assertion failed for funnel_conversion_dropoff') END; END;
INSERT INTO _funnel_conversion_dropoff_prop VALUES (1);
