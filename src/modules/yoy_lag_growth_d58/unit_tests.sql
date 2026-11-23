INSERT INTO d58_rev VALUES (1,100),(2,140),(3,125),(4,185);
CREATE TEMP TABLE _yoy_lag_growth_d58_chk(flag INTEGER);
CREATE TEMP TRIGGER _yoy_lag_growth_d58_chk_trg BEFORE INSERT ON _yoy_lag_growth_d58_chk
BEGIN SELECT CASE WHEN NOT ((SELECT delta_rev FROM v_d58_growth WHERE qtr=2) = 40 AND (SELECT delta_rev FROM v_d58_growth WHERE qtr=3) = -15) THEN RAISE(ABORT, 'unit assertion failed for yoy_lag_growth_d58') END; END;
INSERT INTO _yoy_lag_growth_d58_chk VALUES (1);
