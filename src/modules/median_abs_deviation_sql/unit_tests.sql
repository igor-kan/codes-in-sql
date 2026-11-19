INSERT INTO telemetry VALUES ('cpu',10),('cpu',11),('cpu',12),('cpu',13),('cpu',999);
CREATE TEMP TABLE _median_abs_deviation_sql_chk(flag INTEGER);
CREATE TEMP TRIGGER _median_abs_deviation_sql_chk_trg BEFORE INSERT ON _median_abs_deviation_sql_chk
BEGIN SELECT CASE WHEN NOT ((SELECT mad FROM v_mad_stats WHERE metric='cpu') = 1.0) THEN RAISE(ABORT, 'unit assertion failed for median_abs_deviation_sql') END; END;
INSERT INTO _median_abs_deviation_sql_chk VALUES (1);
