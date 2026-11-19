INSERT INTO nav_curve VALUES (1,100),(2,120),(3,90),(4,110),(5,130);
CREATE TEMP TABLE _running_drawdown_peak_sql_chk(flag INTEGER);
CREATE TEMP TRIGGER _running_drawdown_peak_sql_chk_trg BEFORE INSERT ON _running_drawdown_peak_sql_chk
BEGIN SELECT CASE WHEN NOT ((SELECT MIN(drawdown) FROM v_drawdowns) = -0.25 AND (SELECT drawdown FROM v_drawdowns WHERE day_idx=5) = 0.0) THEN RAISE(ABORT, 'unit assertion failed for running_drawdown_peak_sql') END; END;
INSERT INTO _running_drawdown_peak_sql_chk VALUES (1);
