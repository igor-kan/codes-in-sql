CREATE TEMP TABLE _median_abs_deviation_sql_prop(flag INTEGER);
CREATE TEMP TRIGGER _median_abs_deviation_sql_prop_trg BEFORE INSERT ON _median_abs_deviation_sql_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_mad_stats WHERE mad < 0) = 0) THEN RAISE(ABORT, 'property assertion failed for median_abs_deviation_sql') END; END;
INSERT INTO _median_abs_deviation_sql_prop VALUES (1);
