INSERT INTO funnel_events VALUES (1,1,10),(1,2,20),(1,3,30),(2,1,10),(2,2,15),(3,1,10),(3,2,5);
CREATE TEMP TABLE _funnel_conversion_dropoff_chk(flag INTEGER);
CREATE TEMP TRIGGER _funnel_conversion_dropoff_chk_trg BEFORE INSERT ON _funnel_conversion_dropoff_chk
BEGIN SELECT CASE WHEN NOT ((SELECT s1_cnt FROM v_funnel_summary) = 3 AND (SELECT s2_cnt FROM v_funnel_summary) = 2 AND (SELECT s3_cnt FROM v_funnel_summary) = 1) THEN RAISE(ABORT, 'unit assertion failed for funnel_conversion_dropoff') END; END;
INSERT INTO _funnel_conversion_dropoff_chk VALUES (1);
