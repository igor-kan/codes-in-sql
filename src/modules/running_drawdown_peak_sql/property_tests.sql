CREATE TEMP TABLE _running_drawdown_peak_sql_prop(flag INTEGER);
CREATE TEMP TRIGGER _running_drawdown_peak_sql_prop_trg BEFORE INSERT ON _running_drawdown_peak_sql_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_drawdowns WHERE drawdown > 0) = 0) THEN RAISE(ABORT, 'property assertion failed for running_drawdown_peak_sql') END; END;
INSERT INTO _running_drawdown_peak_sql_prop VALUES (1);
